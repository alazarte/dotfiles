# dotfiles

## usage

`-d` is to set the path with the packages. `-t` is where to place them (where
to create the links). `-n` is simulation mode, it only shows what's going to
do, `-v` verbose...

```
stow -d stow/ -t $HOME -n $package_name -v
```

Replace `$package_name` with the package to install, or with `ls stow/` to
install all.
