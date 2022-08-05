adduser --disabled-password --gecos "" newuser
#usermod -aG sudo newuser
su newuser

bash install-brew-colab.sh

brew install nlopt armadillo
