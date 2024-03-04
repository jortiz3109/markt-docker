FROM node:20-alpine

LABEL maintainer="John Edisson Ortiz"
LABEL email="me@johndev.co"

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /var/www/html

ENTRYPOINT ["/usr/local/bin/entrypoint.sh", "npm", "run", "dev", "--", "--host", "0.0.0.0"]
