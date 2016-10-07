FROM nginx:latest

#ADD simple_conf/nginx.conf /etc/nginx/
COPY simple_conf/docker/nginx.conf /etc/nginx/nginx.conf
COPY simple_conf/docker/default.conf /etc/nginx/conf.d/

#RUN adduser www-date && usermod -u 1000 www-data
#RUN adduser nginx && usermod -u 1000 nginx

RUN mkdir -p /usr/share/nginx/html/ && sudo chmod 755 /usr/share/nginx/html

#COPY /vagrant/web/. /usr/share/nginx/html # To copy web files to NGINX to serve

# RUN sudo chmod 755 /usr/share/nginx/html # I like to set permissions just to be thorough

CMD ["nginx"]

EXPOSE 80 443
