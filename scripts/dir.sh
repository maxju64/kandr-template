#!/usr/bin/env bash

#This script creates a directory for your project
#To use, cd to root directory of the chapter you want to work on

#In terminal, type: "../scripts/dir.sh (Chapter Number) (binary name)"
#For example, if we were working on a program that counted newlines:
#cd Chapter\ 1/
#../scripts/dir.sh 1 newlines

#Prerequisite section
header="$(printf '%s' "$2" | awk '{ print toupper($0) }')"
mkdir -p $2/build
touch "$2/build/.gitkeep"
mkdir $2/src

#Add files
sed "s/EXAMPLE/$header/g" ../scripts/example_config.h >$2/src/$2.h
sed "s/example/$2/g" ../scripts/example_config.c >$2/src/$2.c
sed "s/example/$2/g" ../scripts/example_config_main.c >$2/src/main.c
sed "s/example/$2/g" ../scripts/Makefile_config >$2/Makefile

#Add build contents to gitignore, keep .gitkeep file to make sure build directory is kept
echo "Chapter\ $1/$2/build/*" >>../.gitignore
echo "!Chapter\ $1/$2/build/.gitkeep" >>../.gitignore
