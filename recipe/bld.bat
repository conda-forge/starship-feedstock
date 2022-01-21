cargo build --release --locked
MKDIR %PREFIX%\bin
MOVE target\release\starship.exe %PREFIX%\bin\starship.exe
