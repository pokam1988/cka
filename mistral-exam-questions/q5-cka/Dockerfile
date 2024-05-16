FROM --platform=linux/amd64 nginx:latest

RUN sed -i 's/listen 80/listen 9000/g' /etc/nginx/conf.d/default.conf

EXPOSE 9000