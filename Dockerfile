# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

# Copy a custom HTML page (optional)
# Uncomment the following line to add your custom index.html
# COPY index.html /var/www/html/

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

