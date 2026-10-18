cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
if [[ "${CARGO_BUILD_TARGET}" == "powerpc64le-unknown-linux-gnu" ]]; then
  export CFLAGS_powerpc64le_unknown_linux_gnu="${CFLAGS}"
  unset CFLAGS
fi
cargo build --release --locked --target $CARGO_BUILD_TARGET
mkdir -p $PREFIX/bin
mv target/*/release/starship $PREFIX/bin/starship
