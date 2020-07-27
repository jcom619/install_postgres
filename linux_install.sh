touch ~/.gitignore_global
echo node_modules > ~/.gitignore_global
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

#-------------------------------------------------------------------------------
# Install Postgres
#-------------------------------------------------------------------------------

# installs postgres
apt-get install postgresql

# allows postgres to start when you start the machine
sudo systemctl enable postgresql

sudo -u postgres createuser root -s
sudo -u postgres createuser ${USER} -s

createdb ${USER}

# if the above line failed, try `sudo createdb ${USER}`
