# Docker best practice
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

# Example from here
# https://mherman.org/blog/dockerizing-a-react-app/
# https://github.com/sanjaysaini2000/react-todo-app/blob/master/Dockerfile

# build environment
FROM node:13.12.0-alpine as build
RUN mkdir /app
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
# COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build

# production environment
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
