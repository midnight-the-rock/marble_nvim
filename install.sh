#! /bin/bash

install()
{
  clear
  echo ""
  echo -e "   ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
  echo -e "   ┃                                                      ┃"
  echo -e "   ┃            installing at ~/.config/nvim              ┃"
  echo -e "   ┃                                                      ┃"
  echo -e "   ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
  echo ""

  # move old nvim config into home directory (just in case)
  if [ -e ~/.config/nvim ]; then
    mv ~/.config/nvim ~/nvim-old
  fi

  # clone marble nvim 
  git clone --depth 1 https://github.com/TheMidnightShow/starry.nvim\
   ~/.config/nvim
  sleep 0.5s

  clear
  echo ""
  echo -e "   ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
  echo -e "   ┃                                                      ┃"
  echo -e "   ┃           Marble Nvim has been installed             ┃" 
  echo -e "   ┃                                                      ┃"
  echo -e "   ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
  echo -e "\n   have a good day :)"
}

clear 
echo ""
echo -e "   ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
echo -e "   ┃                                                      ┃"
echo -e "   ┃                Welcome to Marble_Nvim                ┃"
echo -e "   ┃                                                      ┃"
echo -e "   ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
echo -e "\n   press enter to continue. . ."; read

install
