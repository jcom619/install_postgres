touch ~/.gitignore_global
echo node_modules > ~/.gitignore_global
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

#-------------------------------------------------------------------------------
# Install Postgres
#-------------------------------------------------------------------------------

# installs postgres
apt-get install postgresql-12

# allows postgres to start when you start the machine
sudo systemctl enable postgresql

sleep(5)

createdb ${USER}
