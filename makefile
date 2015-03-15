SHELL := /bin/bash

# Colors
YELLOW=\033[1;33m
CYAN=\033[1;36m
NC=\033[0m

# Paths
DEST=/usr/share/phpliteadmin
DATABASE=/var/www/database
APACHE_CONF=/etc/apache2/conf-available

# Variables
APACHE_USER=www-data
APACHE_GROUP=www-data

all:
	@echo
	@echo -e "  ${CYAN}phpLiteAdmin installer${NC}"
	@echo
	@echo -e "    install 	Install phpLiteAdmin globally in Debian/Ubuntu with Apache Server."
	@echo
	@echo -e "  Run: make install"
	@echo

install:
	@echo -e "${YELLOW}Cloning phpLiteAdmin-custom repository${NC}"
	cd /tmp
	git clone https://github.com/irgstudio/phpliteadmin-custom.git
	@echo -e "${YELLOW}Installing phpLiteAdmin globally in Apache Server${NC}"
	sudo chown -R root:root phpliteadmin-custom
	sudo mv phpliteadmin-custom $(DEST)
	cd -
	@echo -e "${YELLOW}Creating databases directory${NC}"
	sudo mkdir $(DATABASE)
	sudo chown -R $(APACHE_USER):$(APACHE_GROUP) $(DATABASE)
	@echo -e "${YELLOW}Creating Launcher${NC}"
	sudo ln -s $(DEST)/misc/phpliteadmin.png /usr/share/pixmaps/
	sudo ln -s $(DEST)/misc/phpliteadmin.desktop /usr/share/applications/
	@echo -e "${YELLOW}Configuring phpLiteAdmin${NC}"
	sudo ln -s $(DEST)/apache.conf $(APACHE_CONF)/phpliteadmin.conf
	sudo a2enconf phpliteadmin
	sudo service apache2 reload
