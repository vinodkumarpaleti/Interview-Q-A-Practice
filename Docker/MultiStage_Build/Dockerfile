FROM node:14 as builder 
#Set the working directory
WORKDIR /app
COPY package*.json ./
RUN npm install
#Second Stage: Production
FROM nginx:alpine
COPY --from=builder /app/dist/usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]