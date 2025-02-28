sudo apt update
sudo apt install -y build-essential cmake libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl python3 python3-pip python3-venv \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
git wget neovim aptitude \
zip unzip tar

# Install pyenv
curl https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv install 3.12  # Change if need be
pyenv global 3.12

# install poetry
pip install pipx
pipx install poetry
export PATH=$PATH:~/.local/bin

# Install vundle (check if compatible with neovim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# Install lazygit
# Install hyperfine
# Install fd
# Install pass (ok maybe not on all systems)
