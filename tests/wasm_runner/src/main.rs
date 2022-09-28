use anyhow::Result;
use wasmtime::*;
use std::env;

fn main() -> Result<()> {
    // get our command line arguments
    let args: Vec<String> = env::args().collect();
    let w = &args[1];
    let f = &args[2];

    // set up the wasm configuration
    let mut config = Config::new();
    config.consume_fuel(true);
    let engine = Engine::new(&config)?;
    let mut store = Store::new(&engine, ());
    store.add_fuel(10_000)?;

    // get the wasm module we'll run
    let module = Module::from_file(store.engine(), w)?;
    let instance = Instance::new(&mut store, &module, &[])?;

    // get the function in the wasm module that we'll call
    let f_w = instance.get_typed_func::<(i32, i32), (), _>(&mut store, f)?;

    // initialise an array that causes worst-case bubble-sort behaviour
    let mut data: [i32; 1000] = [0; 1000];
    for i in 0..data.len() {
        data[i] = (10000-i) as i32;
    }

    // copy the array to the wasm memory
    let memory = instance.get_memory(&mut store, "memory").unwrap();
    unsafe {
        let raw = memory.data_ptr(&mut store).offset(0);
        raw.copy_from(data.as_ptr() as *const u8, 4*data.len());
    }
            
    // repeatedly call the function in the wasm module that we're measuring
    for n in 1.. {

        let count = n*1;

        let fuel_before = store.fuel_consumed().unwrap();
        let _ = match f_w.call(&mut store, (count, 0)) {
            Ok(v) => v,
            Err(_) => {
                println!("Exhausted fuel sorting {} items", count);
                break;
            }
        };
        let fuel_consumed = store.fuel_consumed().unwrap() - fuel_before;
        println!("sorting {} items, [consumed {} fuel]", count, fuel_consumed);
        store.add_fuel(fuel_consumed)?;
    }
    Ok(())
}
