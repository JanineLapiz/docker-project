FROM node:14.15.1

WORKDIR /app
COPY package*.json .
RUN yarn install
COPY . . 
ENV PORT 80
CMD ["yarn", "dev"]