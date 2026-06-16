FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your single HTML file
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80890

CMD ["nginx", "-g", "daemon off;"]
