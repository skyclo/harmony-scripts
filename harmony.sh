#!/bin/bash

# Move to the root directory of your Unity3D project
# Then run it with sudo perms

# Gets Repo Name Input
read -p "Repo Name: " reponame

# Copies the gitignore file into the root directory
cp ./harmony-assets/Unity.gitignore ./.gitignore

# Copies the gitattributes file into the root directory
cp ./harmony-assets/Unity.gitattributes ./.gitattributes

# Installs Git LFS
sudo apt install git-lfs

# Git setup
echo "# $reponame" >> README.md
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/skyclo/$reponame
git remote -v
git push -u origin main

# Done!
rm -r ./harmony-assets/
echo
echo Done!
