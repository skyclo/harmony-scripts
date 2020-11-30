#!/bin/bash

# Move to the root directory of your Unity3D project
# Then run it with sudo perms

# Copies the gitignore file into the root directory
cp ./harmony-assets/Unity.gitignore ./.gitignore

# Copies the gitattributes file into the root directory
cp ./harmony-assets/Unity.gitattributes ./.gitattributes

# Installs Git LFS
sudo apt install git-lfs

# Git setup
git init -b main
git add *
git commit -m "Initial commit"
read -p "Repo Name: " reponame
git remote add origin https://github.com/skyclo/$reponame
git remote -v
git push remote origin

# Done!
echo
echo Done!
