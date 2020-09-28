# dotfiles

## description

Some configuration files.  The way this work is by running `stow
$package_name`, the package name is the name of the folder, that would create a
symlink to your current parent folder, if there's no other file with the same
name. The destination folder can be changed with the `-t` option to use instead
of the parent folder.

I also added this gmi syntax highlighting config, if you're insterested.

## installation

Listing packages after the `-S` option:

```
stow -d stow/ -t $HOME * -S `ls stow/`
```
