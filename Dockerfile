FROM scratch
COPY ./target/wasm32-wasi/release/http_server.wasm /http_server.wasm
ENTRYPOINT [ "/http_server.wasm" ]
