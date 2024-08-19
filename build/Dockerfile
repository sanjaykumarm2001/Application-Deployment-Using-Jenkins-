# Start with the official nginx image
FROM nginx:latest

# Copy all files from the current directory to the nginx html directory
COPY . /usr/share/nginx/html/

# Verify that files were copied by listing the contents of the target directory
RUN ls -la /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
