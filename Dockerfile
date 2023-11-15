FROM node:18

EXPOSE 3000
ADD package.json /app/
ADD yarn.lock /app/
WORKDIR /app
RUN yarn install --frozen-lockfile
ADD . /app/
CMD yarn start
