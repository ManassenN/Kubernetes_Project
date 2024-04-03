FROM centos:latest
RUN sudo apt update
RUN sudo apt apache2 zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html 
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zipcm
CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
EXPOSE 80 22