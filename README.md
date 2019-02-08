# .dot for Fedora

Set sudo without passwd
```bash
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/user_$USER > /dev/null
```
Install base packages
```bash
sudo dnf install -y vim vim-enhanced git xclip powerline powerline-fonts tmux-powerline vim-powerline python3
pip3 install --user powerline_gitstatus
```
Set symlinks
```bash
ln -s ~/.dot/.gitconfig ~/.gitconfig
ln -s ~/.dot/.vimrc ~/.vimrc
ln -s ~/.dot/.vim ~/.vim
ln -s ~/.dot/.bashrc ~/.bashrc
ln -s ~/.dot/.bash_media ~/.bash_media
ln -s ~/.dot/.tmux.conf ~/.tmux.conf
ln -s ~/.dot/powerline/ ~/.config/powerline
```
Set your git configuration
```bash
git config --global user.name "Dominik Lenhardt"
git config --global user.email onkeldom@gmail.com
```
Generate SSH-Key
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
