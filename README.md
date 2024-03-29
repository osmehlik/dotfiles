# dotfiles

## What is it

- Dotfiles are files or folders starting with a dot.
- Dotfiles are considered as hidden by an Unix-like operating system.
- Dotfiles can be usually found in home folder on Unix-like operating systems such as GNU/Linux or Mac OS X.
- Dotfiles holds configuration of user applications such as shells or editors.
- So here is my configuration of these things.

## Features

- Colored & git aware (shows current branch) prompt.
- Vim extended with useful plugins (directory browser, tag browser, etc).

## Usage

### Requirements

- bash completion (required for enhanced bash completion after pressing Tab)
- exuberant ctags (required for tagbar plugin functionality)
- clang (required for clang code completion)
- ack (required for ack plugin functionality)

How to install requirements:

- On Mac OS X with [Homebrew](http://mxcl.github.com/homebrew/):
    1. `sudo brew install bash-completion ctags ack`
    2. You can obtain clang by installing Xcode.

### Installation

  1. `git clone https://github.com/osmehlik/dotfiles.git`
  2. `cd dotfiles`
  3. `./dotfiles install`

### Uninstallation

  1. `./dotfiles uninstall`
  2. `cd ..`
  3. `rm -rf dotfiles`

### Controls

This Vim configuration uses the following shortcuts:

  - F3 - Show/hide directory browser.
  - F4 - Show/hide symbols browser.
  - F5 - Previous tab.
  - F6 - Next tab.
  - F7 - Previous error.
  - F8 - Next error.
  - F9 - Make.
  - F10 - Reindent file.
  - Ctrl + P - Fuzzy file opening.

### Customization

  - **bash** - Put your additional configuration to .bashrc-addons file in your home directory (it will be loaded next time you start bash).
