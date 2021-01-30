# My dotfiles and configuration scripts for Ubuntu System

Unboxing a new machine is _fun_, provisioning it is _not always so fun_.

This repository contains dotfiles and scripts for getting me running on Mac OS X.

See [LICENSE](LICENSE) for the license terms.

## What it does and what it doesn't do

Something important: I have been deliberately focusing on getting me 80% started.

These scripts install most of my tools of choice. I go with the manual route for
the remainder of the tools (Adobe Creative Cloud, Traktor, etc). I also manually
transfer documents, many of which are on Dropbox.

These scripts do not install all possible dependencies, and there is no complex
support for say, loading private data like GnuPG keys, etc. I also tend to go
with a configuration that is close to what is out of the box.

## Getting up and running

### Automated installation.

```bash
bash < (curl -s dotfile.syssec.run)
```

### Manual installation.
1. Install minimally necessary package
  ```bash
  sudo apt install  zsh curl git
  ```
2. Download package.  
  ```bash
  cd $HOME
  curl https://xfersh.syssec.org/YqZM3/dotfiles-0.24-ubuntu.tar.gz| tar xvzf -
  # or curl dotfile.syssec.run/ubuntu | tar xvf -
  mv dotfiles-* dotfiles
  ```
3. Run install script. 

  ```bash
  cd dotfiles; ./install.sh
  ```
  
## Comments

[dotfiles repo](https://github.com/jponge/dotfiles) and updated with my personal

This repo is originally cloned from jponge's dotfile
configuration entries. You can find more intersting configurations from the
following resources.
- [awesome dotfiles](https://github.com/webpro/awesome-dotfiles)
- [mathiasbynens](https://github.com/mathiasbynens/dotfiles) dotfile repo.
- [Your unofficial guide to dotfiles on GitHub.](https://dotfiles.github.io/)

## Configuration/installation items

### $HOME/.gitconfig

### ssh private key

### GPG key set-up

### pass manager

## Additional resources

* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)

