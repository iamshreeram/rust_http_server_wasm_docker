# rust_http_server_wasm_docker
This repository contains an HTTP server implemented in Rust, which has been converted to WebAssembly (wasm) using the wasmi tool. The server can be run in a Docker container.

### To convert the HTTP server binary to wasm, follow the steps below:
1. Execute the command below to build the server using the wasm32-wasi target:
```
cargo build --target wasm32-wasi --release
```
3. Make the wasm file executable by running the following command:
```
chmod +x ./target/wasm32-wasi/release/http_server.wasm
```

### How to Run wasm
I attempted to run the wasm http_server using wasmer, but it doesn't support sockets. The error message displayed was as follows: 
```
Error while importing "wasi_snapshot_preview1"."sock_setsockopt": unknown import. Expected Function(FunctionType { params: [I32, I32, I32, I32, I32], results: [I32] })
```

However, `wasmedge` supports sockets and was able to successfully run the http server. To run it using wasmedge, execute the command below
```
wasmedge ./target/wasm32-wasi/release/http_server.wasm
```
