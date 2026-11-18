# An old base image nobody has updated in years
FROM nginx:1.27-alpine
COPY nginx.conf  /etc/nginx/conf.d/default.conf
COPY site/ /usr/share/nginx/html/
EXPOSE 80
