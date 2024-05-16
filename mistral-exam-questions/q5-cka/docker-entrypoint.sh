#!/bin/sh

# Replace the default Nginx configuration with the custom one
cp /etc/nginx/custom-nginx.conf /etc/nginx/conf.d/default.conf

# Start Nginx in the foreground
exec nginx -g 'daemon off;'
