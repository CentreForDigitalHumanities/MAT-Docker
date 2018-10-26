if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

 # Do the initial apt-get update
echo "Initial apt-get update..."
sudo apt-get update > /dev/null

echo "Install dependencies..."
sudo apt-get install python-dev -y
sudo apt-get install libx11-dev -y
sudo apt-get install openjdk-8-jdk -y

echo "Install MAT"
cd /MAT/
./install.sh

echo "Install Named Entity Task"
cd /MAT/src/MAT
bin/MATManagePluginDirs install $PWD/sample/ne
