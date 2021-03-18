FROM nginx

#MAINTAINER 

#COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./html/index.html /usr/share/nginx/html


