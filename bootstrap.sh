# Ref:
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04

#
# Install nvm
#
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev

# adjust version number as needed
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# make newly installed nvm available without disconnecting session
# necessary for automated bootstrap of the VM
source ~/.profile

#
# Install node
#

# these two lines are extracted from .bashrc
# they are automatically placed into .bashrc by install_nvm.sh
# but for some reason that is not picked up/rerun during provisioning
export NVM_DIR="/home/ubuntu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# install it (finally!)
nvm install 6.0.0