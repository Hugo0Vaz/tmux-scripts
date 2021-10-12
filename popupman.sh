#!/bin/bash

CHOICE=$(man -k . | fzf | awk '{print $1}')

man $CHOICE
