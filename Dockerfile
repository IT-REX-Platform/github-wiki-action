FROM node:12

RUN apt-get install git -y
RUN apk add rsync
RUN npm install github-wiki-sidebar -g

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]