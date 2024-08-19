# Start with the official nginx image
FROM nginx:latest

# Copy all files from the current directory to the nginx html directory
COPY . /var/www/html/

# Verify that files were copied by listing the contents of the target directory
RUN ls -la /var/www/html/

# Expose port 80
EXPOSE 80

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
