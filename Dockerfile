# Stage 0: UI Build Stage
FROM node:10 as build-stage

WORKDIR /app

COPY ./package.json /app/
RUN npm install

COPY . /app/
RUN npm run build

# State 1
FROM nginx

COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80