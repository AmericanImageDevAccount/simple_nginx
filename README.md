##<span style="color:cyan">Simple NGINX Webtest For Vagrant</span>

###<span style="color:darkcyan">What is it for?</span>

This simple test is for use with a vagrant instance. This will allow you to show
a website of your choosing on the port designated in docker-compose.yml

The port is set for `8000` currently but can be changed in the file so you can
test the vagrant instance is up, and sharing information across the network (in
this case the web content)

The `docker-compose.yml` file is in Version 1 format, since there are tendencies for
some vagrant instances (even with the latest docker-compose installed) to
request a Docker Engine of 1.10 or higher.

** If you adjust the file format to Version 2 you may have to fix the
configuration or install of your docker & docker-compose on your vagrant
instance. **

###<span style="color:darkcyan">Instructions</span>

- cd into folder with `docker-compose.yml` file
- copy your web content into the `/vagrant/web` directory (html static files
  only)
- `docker-compose up` (or `docker-compose -d` to run as daemon)
- `docker-compose stop` to quit

###### <span style="background:steelblue; font-weight:bold">If you wish to serve
the webfiles locally from this directory</span> ######

- Change `docker-compose.yml`
  CHANGE: `/vagrant/web:/usr/share/nginx/html`
  TO:     `./nginx-website:/usr/share/nginx/html`

- If you are using the accompanying git-grab function for copying repos to the
  Vagrant instance, be certain to remove the words WEB or DOCKER from the repo
  list or your changes will be erased on next provision of the vagrant instance.



