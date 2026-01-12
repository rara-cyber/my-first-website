# Use lightweight nginx image
FROM nginx:alpine

# Copy static files to nginx html directory
COPY index.html styles.css script.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
