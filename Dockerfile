FROM nginx:1.25.3-alpine-slim
COPY index.html,style.css /usr/share/nginx/html