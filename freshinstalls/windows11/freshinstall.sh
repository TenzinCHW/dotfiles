# Install vcpkg
git clone https://github.com/microsoft/vcpkg.git ~/apps/vcpkg
cd ~/apps/vcpkg; ./bootstrap-vcpkg.sh

# Install PowerToys
winget.exe install Microsoft.PowerToys -s winget

# Install komorebi
git clone https://github.com/LGUG2Z/komorebi.git ~/apps/komorebi
cd ~/apps/komorebi
cargo +stable install --path komorebi --locked
cargo +stable install --path komorebic --locked
cargo +stable install --path komorebic-no-console --locked
cargo +stable install --path komorebi-gui --locked
cargo +stable install --path komorebi-bar --locked
