#!/bin/bash

# Script to install Chainz to /usr/bin/

# Exit on error
set -e

# Optional: clone the repo if not already present
if [ ! -d "Chainz" ]; then
    echo "Cloning Chainz repository..."
    git clone https://github.com/gdplayerokay/Chainz.git
fi

# Move into the repo directory
cd Chainz

# Make sure the chainz file is executable
chmod +x chainz

# Copy to /usr/bin/ (requires sudo)
echo "Installing chainz to /usr/bin/..."
sudo cp chainz /usr/bin/

echo "Installation complete! You can now run 'chainz' from anywhere."
