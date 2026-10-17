cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
cargo build --release --locked --target $CARGO_BUILD_TARGET
mkdir -p $PREFIX/bin
mv target/*/release/starship $PREFIX/bin/starship
