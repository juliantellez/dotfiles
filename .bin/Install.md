# Setup guide

```
In order to ensure a clean set up it is recommended to reset your
computer to factory settings and update your operating system
```
 
## XCODE
```
xcode-select --install 
```

## ZSH https://github.com/robbyrussell/oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## BREW https://brew.sh/
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

## PYTHON
```
python -V # check python's version
# brew install python
sudo easy_install pip
sudo pip install setuptools --no-use-wheel --upgrade
sudo pip install virtualenv
mkdir ~/.virtualenvs
```

## BREW
```
brew install zsh-syntax-highlighting
brew install htop
```

## NPM
```
brew install npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
npm install -g avn avn-nvm avn-n
avn setup
```

## AWS http://docs.aws.amazon.com/cli/latest/userguide/installing.html
```
pip install awscli --upgrade --user
aws --version
aws configure
```

## GIT
### Markdown https://macdown.uranusjr.com/
```
curl -O https://github.com/MacDownApp/macdown/releases/download/v0.7.1/MacDown.app.zip 
git config --global core.excludesfile ~/.gitignore_global
```

### ssh https://help.github.com/articles/connecting-to-github-with-ssh/
```
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen
```

### vim https://github.com/junegunn/vim-plug
```
brew install vim --with-override-system-vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Once you have your .vimrc, do the following
```
  :source %
  :PluginInstall
```

