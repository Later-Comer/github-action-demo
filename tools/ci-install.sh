sudo apt-get update
sudo apt-get -qq install gcc-multilib libncurses5 libncurses5-dev libncursesw5-dev scons
sudo python -m pip install --upgrade pip -qq
git config --global http.postBuffer 524288000