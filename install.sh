#! /bin/bash

# check for older nvim configs
if [ -e ~/.config/nvim ]; then
  mv ~/.config/nvim ~/nvim-old
fi

# install configs
git clone --depth 1 https://github.com/TheMidnightShow/starry.nvim\
 ~/.config/nvim

clear

echo -e "\nstarry.nvim installed!"
