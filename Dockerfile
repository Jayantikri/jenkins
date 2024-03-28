FROM ubuntu
MAINTAINER Poonam
LABEL name=apache
LABEL email=pk81071er@gmail.com
RUN apt update && apt install apache2 -y
WORKDIR /var/www/html/
COPY index.html .
CMD ["apache2ctl", "-D" , "FOREGROUND"]                                
