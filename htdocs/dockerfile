FROM ubuntu:latest
ARG DIBIAN_FRONTEND=noninteractive
WORKDIR /var/www/html
RUN apt update
RUN apt upgrade -y
RUN apt install -y apache2
RUN apt install -y php libapache2-mod-php php-mysql
RUN rm -rf /var/www/html/index.html
COPY ./app .
RUN chmod +x /var/www/html/main.sh
CMD /var/www/html/main.sh