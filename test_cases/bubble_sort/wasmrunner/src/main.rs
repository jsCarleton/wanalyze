use anyhow::Result;
use wasmtime::*;
use std::env;
use rand::Rng;

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
    store.add_fuel(10_000_000_000_000)?;

    // get the wasm module we'll run
    let module = Module::from_file(store.engine(), w)?;
    let instance = Instance::new(&mut store, &module, &[])?;

    // get the function in the wasm module that we'll call
    let f_w = instance.get_typed_func::<(i32, i32), (), _>(&mut store, f)?;

    // create an array that will hold the data we'll sort
    let mut data: [i32; 100000] = [0; 100000];
            
    // repeatedly call the function in the wasm module that we're measuring
    for n in 1.. {

        // determine how many items we'll sort this pass
        let count = n*10000;
        if count > 100000 {
            break;
        }

        // initialise the array with data that causes worst-case bubble-sort behaviour
        for i in 0..count {
            data[i] = rand::thread_rng().gen_range(1, count as i32); // (count-i) as i32;
        }
        let memory = instance.get_memory(&mut store, "memory").unwrap();
        unsafe {
            let raw = memory.data_ptr(&mut store).offset(0);
            raw.copy_from(data.as_ptr() as *const u8, 4*count);
        }

        // call the wasm code to sort the data
        let fuel_before = store.fuel_consumed().unwrap();
        let _ = match f_w.call(&mut store, (count as i32, 0)) {
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
