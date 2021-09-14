FROM nginx:1.21


COPY ./index.html /usr/share/nginx/html/index.html

# hadolint ignore=DL3013

EXPOSE 80