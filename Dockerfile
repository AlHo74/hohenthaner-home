FROM nginx:alpine
COPY public/index.html /tmp/index.html.template
COPY public/robots.txt /usr/share/nginx/html/robots.txt
CMD ["/bin/sh", "-c", "envsubst '$APP_PASSWORD $EXPENSES_URL' < /tmp/index.html.template > /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"]
