FROM nginx

RUN rm /etc/nginx/conf.d/default.conf


COPY ./web/index.html /usr/share/nginx/html
COPY ./web/nginx.conf /etc/nginx/conf.d
COPY ./drop/Media /usr/share/nginx/html/rat

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]