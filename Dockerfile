FROM nginx

# COPY ./others/dispatchEvent.html /usr/share/nginx/html/index.html
COPY ./build/es5-bundled /usr/share/nginx/html
EXPOSE 80

# FROM node:10
# COPY . /app
# WORKDIR /app
# RUN npm install
# RUN npm run build

# EXPOSE 5000
# ENTRYPOINT ["npm", "start"]