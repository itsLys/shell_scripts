#!/bin/bash

# This script installs Ripgrep on Linux x64

# Custom variables
dest="$HOME/goinfre/Apps/fzf"
tmpfile="/tmp/fzf"
url="https://github.com/junegunn/fzf/releases/download/v0.65.1/fzf-0.65.1-linux_amd64.tar.gz"
bin_dir="$HOME/.local/bin"

echo "Download the 14.1.1 version of fzf for Linux x64..."
wget -O $tmpfile $url 2>/dev/null

# Extract the tarball
echo "Extracting the package..."
mkdir -p $dest
tar -xzf $tmpfile -C /tmp
cp -r /tmp/fzf $dest

# Create a symbolic link to the binary
echo "Creating a symbolic link to the binary..."
mkdir -p $bin_dir
ln -sf $dest/fzf $bin_dir/fzf

# Clean up
echo "Cleaning up..."
rm -f $tmpfile
rm -rf /tmp/fzf-0.65.1-linux_amd64

echo "fzf has been successfully installed!"
