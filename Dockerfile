## Base image for the project
FROM nginx:latest

## inject my project file into nginx root directory
COPY index.html /usr/share/nginx/html/index.html

## expose a port for the application to be accessed
EXPOSE 80

## start nginx on startup
CMD ["ngnix", "-g", "daemon-off;"]
