Online Store
============

A simple e-commerce site in PHP.

Installing and Running on Linux
-------------------------------

1. Use the "sudo apt install" command to install the packages "apache2", "mysql-server", "php5", "libapache-mod-php5", and "php5-mysql".
2. Use the "git clone" command to clone the contents of this repository into a new subdirectory named "OnlineStore" in the "/var/www/html/" directory.
3. Create a new user by running the command "adduser www", and following the prompts.
4. Use the "chown" and "chgrp" commands to assign the directory and its files to the user "www".
5. Run the command "chmod +x OnlineStore" to make the directory executable, a step that is evidently necessary to make subdirectories work in Apache.
6. Run "mysql -u root -p" to start a MySQL client session, supplying the correct password when prompted.  Run the script "DatabaseInitialize.sql" to create the database.
7. Restart the apache2 service by running "sudo service apache2 restart".
8. Start a web browser and navigate to "http://localhost/OnlineStore".

Installing and Running on Windows
---------------------------------
1. Download, install, and XAMPP.
2. Use the "git clone" command to clone the contents of this repository into a new subdirectory named "OnlineStore" in the root directory for XAMPP's web server, perhaps "C:\xampp\htdocs".
3. Open the XAMPP control panel and start MySQL.
4. Start the MySQL query tool, supplying the correct password when prompted.  Run the script "DatabaseInitialize.sql" to create the database.
5. Restart the Apache web server through the XAMPP control panel.
6. Start a web browser and navigate to "http://localhost/OnlineStore".