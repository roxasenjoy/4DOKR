FROM ubuntu
LABEL key="Andrew MAH (andrew.mahe@supinfo.com)"

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y nginx
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

#Endroit où on travail
WORKDIR /var/www/html/ 

#Copier le fichier index.html dans la racine du projet (Ligne 8)
COPY app/index.html .
EXPOSE 80