# Configure Apache Virtual Hosts

In this step, we will configure Apache virtual hosts to host multiple websites on the same server.

First, let's create two directories for our virtual hosts:

```bash
sudo mkdir -p /var/www/example.com /var/www/example.org
```

Next, create a default index.html file for each virtual host:

```bash
echo "<h1>Welcome to example.com</h1>" | sudo tee /var/www/example.com/index.html
echo "<h1>Welcome to example.org</h1>" | sudo tee /var/www/example.org/index.html
```

Now, let's configure the Apache virtual hosts. Open the default Apache configuration file:

```bash
sudo nano /etc/apache2/sites-available/000-default.conf
```

Replace the contents of the file with the following:

```apache
<VirtualHost *:80>
    ServerName example.com
    DocumentRoot /var/www/example.com
</VirtualHost>

<VirtualHost *:80>
    ServerName example.org
    DocumentRoot /var/www/example.org
</VirtualHost>
```

Save and close the file.

Enable the new virtual host configurations:

```bash
sudo a2ensite 000-default.conf
```

Finally, restart the Apache HTTP Server to apply the changes:

```bash
sudo systemctl restart apache2
```

Now, you can visit `http://example.com` and `http://example.org` in your web browser to see the respective welcome pages.
