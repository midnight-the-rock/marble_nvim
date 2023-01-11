#! /bin/bash

install()
{
  clear
  echo -e "\n========================================================"
  echo -e "installing starry.nvim at ~/.config/nvim"
  echo -e "========================================================\n"

  # check for older nvim configs
  if [ -e ~/.config/nvim ]; then
    mv ~/.config/nvim ~/nvim-old
  fi

  # install starry template 
  git clone --depth 1 https://github.com/TheMidnightShow/starry.nvim\
   ~/.config/nvim
  sleep 0.5s

  clear

  echo -e "\n========================================================"
  echo -e "starry.nvim installed!"
  echo -e "========================================================\n"
}

aborted()
{
  clear
  echo -e "\n========================================================"
  echo -e "installation aborted!"
  echo -e "========================================================\n"
  sleep 0.5s
}

clear 

echo ""
echo "██████ ██                              [nvim]"
echo "██     ███ ████ ██ ██ ███ ██ ███ ██  ██"
echo "    ██ ██  ██  ███ ███ ██ ███ ██ ██  ██"
echo "██████ ███ ████ ██ ██     ██     ██████"
echo "                                    ██"

echo -e "\nproceed with installation? [y/n]: "; read IN

if [ $IN == "n" ] || [ $IN == "no" ]; then
  aborted 
else
  install
fi
