# DOTFILES

##  SETUP
```
    git init --bare $HOME/.dotfiles
    echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
    source .zshrc

    dotfiles remote add origin git@github.com:<username>/dotfiles.git
```

##  USAGE
```
    dotfiles status
    dotfiles add .myfile
    dotfiles commit -m 'Adding .myfile'
    dotfiles push
```

## INSTALLING ON A NEW MACHINE
```
    git clone --separate-git-dir=$HOME/.dotfiles https://github.com/<username>/dotfiles.git dotfiles-tmp
    rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
    rm --recursive dotfiles-tmp
```

