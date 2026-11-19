FROM nginx:alpine
# APP_VERSION is passed in by the pipeline (the Git commit ID)
ARG APP_VERSION=dev
ENV APP_VERSION=$APP_VERSION
COPY index.html /usr/share/nginx/html/index.html
COPY 40-set-info.sh /docker-entrypoint.d/40-set-info.sh
RUN chmod +x /docker-entrypoint.d/40-set-info.sh
EXPOSE 80
