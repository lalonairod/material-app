#Nombre de la imagen
FROM nginx:1.21.6-alpine
#Copia el archivo default a la maquina virtual
COPY default.config /etc/nginx/conf.d/
#Run ejecuta un comando del shell
RUN rm -rf /usr/share/nginx/app/*
#Agrega lo que esta dentro de un dist a la ruta
ADD dist /usr/share/nginx/app
#Solo lectura
RUN chmod 777 -R /usr/share/nginx/app
#CMD Lo guarda al final de la creacion de la maquina virtual
CMD ["nginx","-g","daemon off;"]