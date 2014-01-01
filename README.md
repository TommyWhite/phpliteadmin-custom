# phpLiteAdmin

This is just a customized installation for phpLiteAdmin.

## Installation (Debian way)

~~~~~~~~
sudo git clone https://github.com/irgstudio/phpliteadmin-custom.git /usr/share/phpliteadmin
sudo chgrp www-data /usr/share/phpliteadmin/database
sudo chown 775 /usr/share/phpliteadmin/database
sudo ln -s /usr/share/phpliteadmin/apache.conf /etc/apache2/conf-available/phpliteadmin.conf
sudo a2enconf phpliteadmin
sudo service apache2 reload
~~~~~~~~

## Configuration

It's recommended to edit `/usr/share/phpliteadmin/phpliteadmin.config.php` and set your **password** and **language**.
