FROM nginx:latest
EXPOSE 443 80
COPY ./files/cert.pem /etc/ssl/certs/cert.pem
COPY ./files/key.pem /etc/ssl/private/key.pem
COPY ./files/nginx.conf /etc/nginx/nginx.conf