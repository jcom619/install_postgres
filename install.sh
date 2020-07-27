touch ~/.gitignore_global
echo node_modules > ~/.gitignore_global
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

#-------------------------------------------------------------------------------
# Install Postgres
#-------------------------------------------------------------------------------

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install postgresql
brew install postgresql

# fix some issues with older macs
sudo mkdir -p /usr/local/var/postgres/{pg_tblspc,pg_twophase,pg_stat_tmp}

# may also need this on older macs
sudo chmod -R 0700 /usr/local/var/postgres
sudo chown -R ${USER} /usr/local/var/postgres

# set postgresql to load on startup
mkdir -p ~/Library/LaunchAgents
cp /usr/local/Cellar/postgresql/12.*/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/
# after this course if you don't use postgres much you can run
# rm /usr/local/Cellar/postgresql/12.*/homebrew.mxcl.postgresql.plist
# and it will no longer run on system startup

# launch postgres
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# give postgres time to load
sleep 5s

# create db matching user name so we can log in by just typing psql
createdb ${USER}