#! /bin/bash

# install packer if missing 
if [ -e ~/.local/share/nvim/site/pack/packer ]; then
  echo ~/.local/share/nvim/site/pack/packer
else
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# check for older nvim configs
if [ -e ~/.config/nvim ]; then
  mv ~/.config/nvim ~/nvim-old
fi

# install configs
git clone --depth 1 https://github.com/TheMidnightShow/starry.nvim\
 ~/.config/nvim
