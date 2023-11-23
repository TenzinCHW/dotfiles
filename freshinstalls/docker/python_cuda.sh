apt update
apt install -y build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
git wget vim

#wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.1-1_all.deb
#dpkg -i cuda-keyring_1.1-1_all.deb
#apt-get update
apt-get install -y libcudnn8=8.9.5.*-1+cuda12.2 libnccl-dev

curl https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv install 3.10
pyenv global 3.10

curl -sSL https://install.python-poetry.org | python3 -
export PATH=$PATH:~/.local/bin

cat addtoprofile >> ~/.profile
source ~/.profile

