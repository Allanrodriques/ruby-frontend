# Stage 1: Build the React app
FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Deploy the built app using Nginx
FROM nginx:latest

# Copy the built app from the build stage to Nginx web root directory
COPY --from=build /app/build /usr/share/nginx/html

