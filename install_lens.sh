# Install Dependencies
sudo apt-get install -y curl g++ make tar -y

# Install NVM
# curl -sS -o install_nvm.sh https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh
bash ./install_nvm.sh
export NVM_DIR="${HOME}/.nvm"
source "${NVM_DIR}/nvm.sh"

# Get OpenLens Source Code
# curl -sL -o openlens.tgz https://github.com/lensapp/lens/archive/refs/tags/v6.1.0.tar.gz
# tar xf ./openlens.tgz
# mv ./lens-* ./lens

# sed -i '/\"rpm\"\,/d' ./lens/package.json

# Build and Install OpenLens
nvm install 16 && nvm use 16 && npm install -g yarn
make build

find ./dist/ -type f -name "*.deb" -exec sudo apt-get install {} \;

