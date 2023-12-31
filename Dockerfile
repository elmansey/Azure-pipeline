FROM nginx

RUN rm -rf /usr/share/nginx/html/*
COPY ./style.css /usr/share/nginx/html
COPY ./script.js /usr/share/nginx/html
COPY ./index.html /usr/share/nginx/html


ENTRYPOINT ["nginx", "-g", "daemon off;"]
