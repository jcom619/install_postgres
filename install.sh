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

# launch postgres
brew services start postgres

# give postgres time to load
sleep 5s

# create db matching user name so we can log in by just typing psql
createdb ${USER}