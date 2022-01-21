cargo build --release --locked
mkdir -p $PREFIX/bin
mv target/*/release/starship $PREFIX/bin/starship
