FROM nginx:1.21.1-alpine

RUN chmod -R a=w /var/cache/nginx/ \
        && touch /var/run/nginx.pid \
        && chmod a=w /var/run/nginx.pid \
        && rm /etc/nginx/conf.d/*

COPY tsar.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]