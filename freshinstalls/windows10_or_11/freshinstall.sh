# Install vcpkg
git clone https://github.com/microsoft/vcpkg.git ~/apps/vcpkg
cd ~/apps/vcpkg; ./bootstrap-vcpkg.sh

# Install PowerToys
winget.exe install Microsoft.PowerToys -s winget

# Install komorebi
#sudo add-apt-repository ppa:gnome3-team/gnome3 -y
#sudo add-apt-repository ppa:vala-team -y
#sudo add-apt-repository ppa:gnome3-team/gnome3-staging -y
#sudo apt install cmake valac libgtk-3-dev libgee-0.8-dev libclutter-gtk-1.0-dev libclutter-1.0-dev libwebkit2gtk-4.0-dev libclutter-gst-3.0-dev
#git clone https://github.com/cheesecakeufo/komorebi.git ~/apps/komorebi
#cd ~/apps/komorebi
#mkdir build && cd build
#cmake .. && sudo make install && ./komorebi

# Install docker
curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-docker.sh | /bin/bash
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo apt-get install -y docker-compose-plugin
sudo gpasswd -a $USER docker
sudo service docker start

# Install nvidia container toolkit https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit
