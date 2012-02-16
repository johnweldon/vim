VIM Folder Structure
=


Includes submodule reference to git@github.com:johnweldon/vimfiles
Use the following to set up after cloning repo:

 1. cd $REPO_PATH$
 1. git submodule init
 1. git submodule update

The vimfiles submodule contains it's own set of submodules... repeat the initialization there:

 1. cd $REPO_PATH$\vimfiles
 1. git submodule init
 1. git submodule update
