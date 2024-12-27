FROM nginx:latest

RUN mkdir -p /etc/nginx/logs && \
    chmod 755 /etc/nginx/logs
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
