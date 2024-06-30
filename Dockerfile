FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json yarn.lock ./

RUN yarn install
# If you are building your code for production
# RUN npm ci --omit=dev

COPY . .

EXPOSE 5000

# Run the app
CMD [ "yarn", "start" ]