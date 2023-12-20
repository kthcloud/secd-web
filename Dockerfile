FROM nginx

RUN rm /etc/nginx/conf.d/default.conf


COPY ./web/index.html /usr/share/nginx/html
COPY ./web/nginx.conf /etc/nginx/conf.d
COPY ./media/ /usr/share/nginx/html/media

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]