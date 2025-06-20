# Use official nginx image
FROM nginx:alpine

# Copy static HTML files to nginx's public directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

docker build -t netlify-migrated-app .
docker run -p 8080:80 netlify-migrated-app
