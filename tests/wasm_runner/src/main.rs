use anyhow::Result;
use wasmtime::*;
use std::env;

fn main() -> Result<()> {
    // get our command line arguments
    let args: Vec<String> = env::args().collect();
    let wat_file = &args[1];

    // set up the wasm configuration
    let mut config = Config::new();
    config.consume_fuel(true);
    let engine = Engine::new(&config)?;
    let mut store = Store::new(&engine, ());
    store.add_fuel(10_000)?;

    // get the wasm module we'll run
    let module = Module::from_file(store.engine(), wat_file)?;
    let instance = Instance::new(&mut store, &module, &[])?;

    // get the function in the wasm module that we'll call
    let fibonacci = instance.get_typed_func::<i32, i32, _>(&mut store, "fibonacci")?;

    // repeatedly call the function in the wasm module that we're measuring
    for n in 1.. {
        let fuel_before = store.fuel_consumed().unwrap();
        let output = match fibonacci.call(&mut store, n) {
            Ok(v) => v,
            Err(_) => {
                println!("Exhausted fuel computing fib({})", n);
                break;
            }
        };
        let fuel_consumed = store.fuel_consumed().unwrap() - fuel_before;
        println!("fib({}) = {} [consumed {} fuel]", n, output, fuel_consumed);
        store.add_fuel(fuel_consumed)?;
    }
    Ok(())
}
