#!/bin/bash

# Install the various dotfiles in this repo. 

## TO DO

# Back up current dotfiles that are about to be replaced
# -undo / -remove functionality
# -Force option -- just yolo replace 


# Select dotfiles and conf directories
DOTFILES=$(ls -la | egrep -v '\.$|\.git$|README.md$|install.sh$|^total' | awk '{print $NF}')

# Loop over them and copy them to the current user's home path
for DOTFILE in $DOTFILES; do

    echo "Copying $DOTFILE..."
    # -R is used for recusion as there will likely be some directories
    # -i is used to prompt the user before overwriting current dotfiles if they already exist 
    cp -Ri $DOTFILE ~/

done


echo "Install complete. Please restart services to use the newer configurations."
