# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf
RUN chmod -R g+w /var/cache/nginx /var/run /etc/nginx/conf.d /etc/nginx/nginx.conf

COPY yes.gif /usr/share/nginx/html/yes.gif

# Expose port 8080
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
