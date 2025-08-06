FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

RUN chmod 644 /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
