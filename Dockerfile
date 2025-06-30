# Using the official Nginx image as the base (Apache can also be used)
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
