FROM nginx

# COPY ./others/dispatchEvent.html /usr/share/nginx/html/index.html
COPY ./build/es5-bundled /usr/share/nginx/html
EXPOSE 80

