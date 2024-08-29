FROM nginx:latest
RUN mkdir -p /etc/ssl
COPY /certs/ /etc/ssl/
COPY ./nginx.conf /etc/nginx/conf.d/

EXPOSE 443
