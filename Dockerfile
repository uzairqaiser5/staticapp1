# Use lightweight Nginx web server
FROM nginx:alpine

# Remove any default welcome files
RUN rm -rf /usr/share/nginx/html/*

# Copy YOUR repo's HTML, CSS, images, and JS files into Nginx
COPY . /usr/share/nginx/html

# Open port 80 to web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
