dotfiles
========

## Installation
### Requirements
[Stow](https://www.gnu.org/software/stow/manual/stow.html) should be available via your package manager.

- `$ sudo pacman -S stow`
- `$ sudo apt-get install stow`
- `$ yum install stow`

Optionally clone it [from source](https://savannah.gnu.org/git/?group=stow) and [build it](http://git.savannah.gnu.org/cgit/stow.git/tree/INSTALL).

### Usage
Stow will create symlinks for files in the parent directory from where you executed the command. Therefore, the cloned repository should be placed in your home directory `~/dotfiles`, you will otherwise have to use the `-d` flag with the repository location.

#### Examples (executed in ~/dotfiles)

Installing emacs configurations: `$ stow emacs`.                     
Uninstalling emacs configurations: `$ stow -D emacs`.
