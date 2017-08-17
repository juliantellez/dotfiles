# Dotfiles

##  Setup
```
    git init --bare $HOME/.dotfiles
    echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
    source .zshrc

    dotfiles remote add origin git@github.com:<username>/dotfiles.git
```

##  Usage
```
    dotfiles status
    dotfiles add .myfile
    dotfiles commit -m 'Adding .myfile'
    dotfiles push
```

## Installing on a new machine
```
    git clone --separate-git-dir=$HOME/.dotfiles https://github.com/<username>/dotfiles.git dotfiles-tmp
    rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
    rm --recursive dotfiles-tmp
```

