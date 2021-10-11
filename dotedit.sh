#/bin/bash

dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

FILE_LIST=$($dotfiles ls-tree --full-tree -r --name-only HEAD)

CHOICE=$(printf "$FILE_LIST" | fzf)

FILE=$(echo "$HOME"/"$CHOICE")

vim $FILE
