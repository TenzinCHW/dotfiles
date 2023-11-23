sudo apt update
sudo apt install -y build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
git wget vim

# Install pyenv
curl https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv install 3.10  # Change if need be
pyenv global 3.10

# install poetry
curl -sSL https://install.python-poetry.org | python3 -
export PATH=$PATH:~/.local/bin


mkdir ~/apps
cd ~/apps
# Install julia
wget https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.4-linux-x86_64.tar.gz
tar xvf $(ls julia*)
rm *.tar.gz
echo "alias julia=$(ls)/bin/julia" >> ~/.profile
# Install vundle (check if compatible with neovim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install lazygit
# Install hyperfine
# Install fd
# Install pass (ok maybe not on all systems)
