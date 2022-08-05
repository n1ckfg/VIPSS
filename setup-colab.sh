adduser --disabled-password --gecos "" newuser
#usermod -aG sudo newuser
su newuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install nlopt armadillo
