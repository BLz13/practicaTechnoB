#!/bin/bash
set -e

# Install MariaDB
sudo apt-get update -y
sudo apt-get install -y mariadb-server

# Fix ownership of the data directory
sudo chown -R mysql:mysql /var/lib/mysql

# Initialize data directory only if empty (first run)
if [ ! -d "/var/lib/mysql/mysql" ]; then
    echo "🔧 First run — initializing database..."
    sudo mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

# Start MariaDB
sudo service mariadb start

echo "✅ MariaDB ready!"
