# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the static HTML file into the Nginx web server's default directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 so the web page can be accessed
EXPOSE 80

