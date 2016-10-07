FROM nginx:latest

# I kept both standard and docker install options in this file.
# The docker NGINX image I use does not have sites_available folder and some other file locations are different.

# But to make it easy for testing I left some of the information in so the line can be commented or uncommented out
# So for docker, ignore RUN adduser lines commented out, as a for instance.

#ADD simple_conf/nginx.conf /etc/nginx/ # FOR STANDARD INSTALL

COPY simple_conf/docker/nginx.conf /etc/nginx/nginx.conf
COPY simple_conf/docker/default.conf /etc/nginx/conf.d/

#RUN adduser www-date && usermod -u 1000 www-data # FOR STANDARD INSTALL
#RUN adduser nginx && usermod -u 1000 nginx # FOR DOCKER INSTALL

RUN mkdir -p /usr/share/nginx/html/ && sudo chmod 755 /usr/share/nginx/html

#COPY /vagrant/web/. /usr/share/nginx/html # To copy web files to NGINX to serve

# RUN sudo chmod 755 /usr/share/nginx/html # I like to set permissions just to be thorough

CMD ["nginx"]

EXPOSE 80 443
