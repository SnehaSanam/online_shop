#Base Image (OS)
FROM node:20-alpine

#Working Directory
WORKDIR /app

#copy package.json and package-lock.json
COPY package*.json ./
Run npm ci


#Copy code from host to container
COPY . .

#Run Build and install
Run npm run build

#Expose port
EXPOSE 5173

#Serve the app/keep it running
CMD ["npm","run","dev"]




