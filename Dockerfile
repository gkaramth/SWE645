FROM --platform=linux/amd64 ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx
RUN rm /var/www/html/index.nginx-debian.html
COPY index.html /var/www/html/
COPY GMU.png /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]