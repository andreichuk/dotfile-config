# init of git repo
git init --bare $HOME/.dotfile
alias dotfile='/usr/local/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME'
dotfile config --local status.showUntrackedFiles no
echo "alias dotfile='/usr/local/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME'" >> $HOME/.kshrc

# usage
dotfile status
dotfile add .vimrc
dotfile commit -m "added .vimrc"

# restore from remote
git clone --separate-git-dir=$HOME/.dotfile /path/to/repo $HOME/.dotfile-tmp
cp ~/.dotfile-tmp/.gitmodules ~ # if using Git submodules
rm -r ~/.dotfile-tmp/
alias dotfile='/usr/local/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME'
