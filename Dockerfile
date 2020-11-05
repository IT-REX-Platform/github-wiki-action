FROM node:12

RUN apt-get update 
RUN apt-get install git rsync -y
RUN npm install github-wiki-sidebar -g

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]