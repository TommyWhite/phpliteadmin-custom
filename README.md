# phpLiteAdmin

This is just a customized installation for phpLiteAdmin.

## Installation

Requires a **web server** with **PHP 5.1** (or greater), `php-sqlite` and **sqlite**.

### Install in the public folder

It works in any situation.

~~~~~~~~
git clone https://github.com/irgstudio/phpliteadmin-custom.git 
sudo mv phpliteadmin /var/www/html/phpliteadmin
~~~~~~~~

### Install as global webapp (Debian way with Apache)

If you have access to the server configuration, maybe you want to install it globally.

~~~~~~~~
git clone https://github.com/irgstudio/phpliteadmin-custom.git
sudo mv phpliteadmin /usr/share/phpliteadmin
sudo chgrp www-data /usr/share/phpliteadmin/database
sudo ln -s /usr/share/phpliteadmin/apache.conf /etc/apache2/conf-available/phpliteadmin.conf
sudo a2enconf phpliteadmin
sudo service apache2 reload
~~~~~~~~

## Configuration

It's recommended to edit `/usr/share/phpliteadmin/phpliteadmin.config.php` and set your **password** and **language**.
