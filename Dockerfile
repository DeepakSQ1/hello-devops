# An old base image nobody has updated in years
FROM nginx:alpine
RUN apk update && apk upgrade --no-cache
COPY nginx.conf  /etc/nginx/conf.d/default.conf
COPY site/ /usr/share/nginx/html/
EXPOSE 80
