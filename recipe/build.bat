cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
cargo build --release --locked --target %CARGO_BUILD_TARGET%
MKDIR %PREFIX%\bin
MOVE target\x86_64-pc-windows-msvc\release\starship.exe %PREFIX%\bin\starship.exe
