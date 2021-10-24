#!/bin/bash

# VBoxManage startvm "$VM" --type headless
# VBoxManage controlvm "$VM" pause --type headless
# VBoxManage controlvm "$VM" resume --type headless
# VBoxManage controlvm "$VM" poweroff --type headless

# VM=$(VBoxManage list vms | grep "veos" | cut -d \" -f2 | fzf)

SESSIONNAME="development"

tmux has-session -t $SESSIONNAME

HASSESSION=$?

if [[ $HASSESSION != 0 ]]
then
    tmux new -s development -d
fi

tmux switch-client -t $SESSIONNAME
