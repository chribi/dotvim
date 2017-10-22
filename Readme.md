# Install
 * Clone into ~/.vim
 * `cd ~/.vim`
 * `mkdir ~/.vim.undo ~/.vim.swap ~/.vim.backup`
 * `git submodule init`
 * `git submodule update`
 * For vim version < 7.4: `mv ~/.vim/vimrc ~/.vimrc`
 * Start vim und run `:PluginInstall`
 * `cd ~/.vim/bundle/vimproc.vim/ && make` to build vimproc
 * `cd ~/.vim/bundle/YouCompleteMe/ && ./install.py --clang-completer --js-completer` to install YouCompleteMe

