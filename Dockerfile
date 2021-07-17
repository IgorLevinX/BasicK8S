FROM node

COPY ./npm-demo-app .
WORKDIR /npm-demo-app
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]