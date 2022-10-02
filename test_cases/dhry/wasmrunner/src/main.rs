use anyhow::Result;
use wasmtime::*;
use std::env;
use chrono::prelude::*;

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
    let memory_ty = MemoryType::new(1, None);
    let mut memory = Memory::new(&mut store, memory_ty)?;
    let module = Module::from_file(store.engine(), w)?;
    let proc_exit         = Func::wrap(&mut store, |_: i32| -> () {println!("proc_exit"); });
    let fd_write          = Func::wrap(&mut store, |_: i32, _: i32, _: i32, _: i32| -> i32 { println!("fd_write"); 1 });
    let environ_get       = Func::wrap(&mut store, |_: i32, _: i32| -> i32 { println!("environ_get"); 0 });
    let environ_sizes_get = Func::wrap(&mut store, |_: i32, _: i32| -> i32 { println!("environ_sizes_get"); 0 });
    let clock_time_get    = Func::wrap(&mut store, |a: i32, b: i64, c: i32| -> i32 {
            println!("clock_time_get {} {} {}", a, b, c);
            let now = Utc::now();
            let ts: i64 = now.timestamp();
            memory.write(&mut store, c as usize, &ts.to_ne_bytes());
            0 });
    let args_get          = Func::wrap(&mut store, |_: i32, _: i32| -> i32 { println!("args_get"); 0 });
    let args_sizes_get    = Func::wrap(&mut store, |_: i32, _: i32| -> i32 { println!("args_sizes_get"); 0 });
    let instance = Instance::new(&mut store, &module,
        &[  Extern::Func(proc_exit),
            Extern::Func(fd_write),
            Extern::Func(environ_get),
            Extern::Func(environ_sizes_get),
            Extern::Func(clock_time_get),
            Extern::Func(args_get),
            Extern::Func(args_sizes_get)
        ])?;

    // get the function in the wasm module that we'll call
    let f_w = instance.get_typed_func::<(i32, i32), i32, _>(&mut store, f)?;

    // repeatedly call the function in the wasm module that we're measuring
    for n in 1.. {

        // call the wasm code to sort the data
        let fuel_before = store.fuel_consumed().unwrap();
        let _ = match f_w.call(&mut store, (0, 0)) {
            Ok(v) => v,
            Err(_) => {
                println!("Exhausted fuel on iteration {}", n);
                break;
            }
        };
        let fuel_consumed = store.fuel_consumed().unwrap() - fuel_before;
        println!("iteration {}, [consumed {} fuel]", n, fuel_consumed);
        store.add_fuel(fuel_consumed)?;
    }
    Ok(())
}
