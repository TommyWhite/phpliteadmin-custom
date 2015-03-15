# phpLiteAdmin

This is just a customized installation for phpLiteAdmin.

## Installation

Requires a **web server** with **PHP 5.1** (or greater), `php-sqlite` and `sqlite3` packages.

### Install in the public folder

It works in any situation, you just need to install phpLiteAdmin in the public directory, create the databases directory and giving permissions to the Apache user.

If you are using Apache in Debian/Ubuntu:

```bash
git clone https://github.com/irgstudio/phpliteadmin-custom.git
sudo mv phpliteadmin-custom /var/www/html/phpliteadmin
sudo mkdir /var/www/databases
sudo chown www-data:www-data -R /var/www/databases
```

### Install as global webapp (Debian way with Apache)

If you have access to the server configuration, maybe you want to install it globally. You only need to execute the `makefile`.

```bash
make install
```

>It is just a couple of stadard commands. It's easy to adapt to any other distro.

Now you can access to <http://localhost/phpliteadmin>

## Configuration

Edit `/usr/share/phpliteadmin/phpliteadmin.config.php` and set your **password** and **language**.
