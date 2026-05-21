FROM nginx:alpine

LABEL maintainer="Kavin Maziya"
LABEL project="Conference Room Booking System"
LABEL version="1.0.0"

ENV APP_ENV=development
ENV API_VERSION=v1

COPY lib/src/index.html /usr/share/nginx/html/index.html

EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]

# Use the official Nginx image as the base
#FROM nginx:alpine

# Remove default Nginx static files
#RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML file into the Nginx web root
#COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
#EXPOSE 80

# Start Nginx in the foreground
#CMD ["nginx", "-g", "daemon off;"]