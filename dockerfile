# Use a base image that supports running a web server
FROM nginx:latest

# Copy your Tetris game files (HTML, CSS, JavaScript, YAML) to the appropriate location

COPY manifests/tetris-deploy.yaml /usr/share/nginx/html/
COPY manifests/tetris-svc.yaml /usr/share/nginx/html/

# Expose port 80 to allow external access to the web server
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
