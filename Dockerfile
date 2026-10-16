FROM nginx:alpine
ARG BUILD_NUMBER=local
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/BUILD_NUMBER_PLACEHOLDER/${BUILD_NUMBER}/g" /usr/share/nginx/html/index.html
EXPOSE 80
