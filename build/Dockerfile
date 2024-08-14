FROM node
WORKDIR /var/www/html/
COPY . .
RUN npm install 
COPY . .
EXPOSE 80
CMD ["npm","start"]