# dotfiles

## usage

- `-d` is to set the path with the packages, in my case `stow/`
- `-t` is where to place them (where to create the links), in my case `$HOME`
- `-n` is simulation mode, it only shows what's going to do
- `-v` verbose, to see which links is creating

The command itself:

```
stow -d stow/ -t $HOME -n $package_name -v
```

Replace `$package_name` with the package to install, or with `ls stow/` to
install all.
