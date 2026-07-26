FROM nginx:1.29-alpine

COPY . /usr/share/nginx/html/

HEALTHCHECK --interval=10s --timeout=3s --retries=12 --start-period=5s \
  CMD wget --spider -q http://127.0.0.1/ || exit 1
