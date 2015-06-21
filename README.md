# dotvim
> .vim directory in the home folder

I'm now using pathogen to handle my vim plugins

##  Quick install:

* Clone this repository and get inside the .vim directory

```console
  git clone git@github.com:thiagopaxa/dotvim.git ~/.vim
  cd $_
```

* Start the submodules and update them, for the plugins to work
```console
  git submodule init
  git submodule update
```

* Create a symbolic link for the vimrc file)
```console
  ln -sfi ~/.vim/vimrc ~/.vimrc
```

Now you're ready to go
