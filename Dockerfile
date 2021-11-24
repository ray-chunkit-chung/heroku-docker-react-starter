# Docker best practice
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

# Example from here
# https://mherman.org/blog/dockerizing-a-react-app/
# https://github.com/sanjaysaini2000/react-todo-app/blob/master/Dockerfile

# build environment
FROM alpine:latest as build
RUN apk update
RUN apk add --update nodejs npm
RUN mkdir /app
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build

# production environment
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]


