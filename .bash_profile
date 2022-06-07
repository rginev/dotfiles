#!/usr/bin/env bash

# Add `~/bin` to the `$PATH`
# export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/opt/mysql-client/bin:$HOME/.gem/ruby/2.6.0/bin/:${KREW_ROOT:-$HOME/.krew}/bin:$PATH";


# Load the shell dotfiles, and then some:
# * ~/.bash_path can be used to extend `$PATH`.
# * ~/.bash_extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_path,bash_prompt,bash_exports,bash_aliases,bash_functions,bash_extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

