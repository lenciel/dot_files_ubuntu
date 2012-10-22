Dotfiles
========
This repository includes all of my custom dotfiles.  The included setup
script creates symlinks from the home directory to the files which are located
in `~/dot_files_ubuntu/`.

The setup script will also back up the existing dotfiles into a
`~/dot_files_old/` directory.

I also prefer `zsh` as my shell of choice.  As such, the setup script will also
clone the `oh-my-zsh` repository from GitHub. It then checks to see if `zsh`
is installed.  If `zsh` is installed, and it is not already configured as the
default shell, the setup script will execute a `chsh -s $(which zsh)`.  This
changes the default shell to zsh, and takes effect as soon as a new zsh is
spawned or on next login.

So, to recap, the install script will:

1. Back up any existing dotfiles in your home directory to `~/dot_files_old/`
2. Create symlinks to the dotfiles in `~/dot_files_ubuntu/` in your home directory
3. Clone the `oh-my-zsh` repository from my GitHub (for use with `zsh`)
4. Check to see if `zsh` is installed, if it isn't, try to install it.
5. If zsh is installed, run a `chsh -s` to set it as the default shell.

Installation
------------

``` bash
git clone git://github.com/lenciel/dot_files_ubuntu  ~/dot_files_ubuntu
cd ~/dot_files_ubuntu
./makesymlinks.sh
```
