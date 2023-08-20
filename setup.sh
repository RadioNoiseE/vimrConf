# escape sandbox
cd

# make dir
mkdir -p .vim/pack/autoload/start/

# kindly cd
cd .vim/pack/autoload/start/

# libgit2 clone plugins
lg2 clone https://github.com/lifepillar/vim-mucomplete
lg2 clone https://github.com/sainnhe/everforest
lg2 clone https://github.com/whatyouhide/vim-gotham
lg2 clone https://github.com/morhetz/gruvbox
lg2 clone https://github.com/kristijanhusak/vim-hybrid-material
lg2 clone https://github.com/junegunn/seoul256.vim
lg2 clone https://github.com/altercation/solarized
lg2 clone https://github.com/chriskempson/base16-vim
lg2 clone https://github.com/junegunn/limelight.vim
lg2 clone https://github.com/paradigm/vim-multicursor
lg2 clone https://github.com/neomake/neomake
lg2 clone https://github.com/andymass/vim-matchup
lg2 clone https://github.com/junegunn/goyo.vim
lg2 clone https://github.com/junegunn/rainbow_parentheses.vim
lg2 clone https://github.com/vim-airline/vim-airline
lg2 clone https://github.com/vim-airline/vim-airline-themes

# place .vimrc
cd
mv vimrc.vim .vimrc

# exit
echo "now exit ..."
