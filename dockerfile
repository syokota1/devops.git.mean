FROM node:8

# Create app directory
WORKDIR /apps

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY server*.js ./

RUN npm config set strict-ssl false 

RUN npm install

#RUN npm install express mongodb --save 
 
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]