# Fetching the latest node image on alpine linux
FROM alpine:3.14

WORKDIR /to-do-app

# # Installing dependencies
COPY ./package.json /to-do-app
RUN apk add --update nodejs yarn
RUN yarn install

# # Copying all the files in our project
COPY . .

# # Starting our application
CMD yarn start
