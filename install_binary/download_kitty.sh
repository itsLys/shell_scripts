#!/bin/zsh

# This script installs Ripgrep on Linux x64

# Custom variables
dest="$HOME/goinfre/Apps/kitty"
tmpfile="/tmp/kitty"
url="https://github.com/kovidgoyal/kitty/releases/download/v0.42.2/kitty-0.42.2-x86_64.txz"
bin_dir="$HOME/.local/bin"

echo "Download kitty..."
wget -O $tmpfile $url 2>/dev/null

# Extract the tarball
echo "Extracting the package..."
mkdir -p $dest
tar -xf $tmpfile -C /tmp
cp -r /tmp/kitty-0.42.2-x86_64/* $dest

# Create a symbolic link to the binary
echo "Creating a symbolic link to the binary..."
mkdir -p $bin_dir
ln -sf $dest/kitty $bin_dir/kitty

# Clean up
echo "Cleaning up..."
rm -f $tmpfile
rm -rf /tmp/kitty-0.42.2-x86_64 

echo "kitty has been successfully installed!"

