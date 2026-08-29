#!/bin/bash

my_home="$HOME" # environment variables can be set to local variables which can then be called more efficiently
my_username="$USER"
my_OS="$OSTYPE"


echo "Home Directory: $HOME" # ($HOME) is the environment variable that represents the home directory of the user
echo "Current user: $USER" # Environment variable must be in all CAPS
echo "OS type: $my_OS" #local variable storing environment variable

# -------------------------------------------------------------------

echo "username: $LOGNAME" # ($LOGNAME) represents the login name of the current user
echo "shellname: $SHELL" # current user shell
echo "currentdir: $PWD" # current working directory
echo "executable paths: $PATH" # executable paths and their binaries
echo "default language: $LANG" # default language