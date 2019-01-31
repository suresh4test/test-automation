# Version: 0.0.1
FROM nginx:alpine
MAINTAINER Suresh "sureshservice1@gmail.com"
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
ENTRYPOINT ["nginx", "-g", "daemon off;"]
