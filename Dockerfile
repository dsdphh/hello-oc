#FROM nginxinc/nginx-unprivileged
#COPY ./html/index.html /usr/share/nginx/html

FROM registry.access.redhat.com/ubi8/nginx-116

# Add application sources
ADD test-app/nginx.conf "${NGINX_CONF_PATH}"
ADD test-app/nginx-default-cfg/*.conf "${NGINX_DEFAULT_CONF_PATH}"
ADD test-app/nginx-cfg/*.conf "${NGINX_CONFIGURATION_PATH}"
ADD test-app/*.html .

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"
