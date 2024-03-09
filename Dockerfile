# Use the Nginx alpine image for a lightweight container
FROM nginx:alpine

# Remove any existing files in the Nginx web directory
RUN rm -rf /usr/share/nginx/html/*

# Copy the website's files into the Nginx web directory
COPY index.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
COPY error /usr/share/nginx/html/error
COPY images /usr/share/nginx/html/images

# The ports that your web server uses (Nginx defaults to port 80)
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
