FROM nginx:1.25.3-alpine-slim
COPY . /usr/share/nginx/html
RUN rm -f /usr/share/nginx/html/Dockerfile Jenkinsfile docker-compose