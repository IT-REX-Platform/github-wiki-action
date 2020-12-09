FROM node:12

RUN apt-get update 
RUN apt-get install git rsync wget -y
RUN wget https://github.com/jgraph/drawio-desktop/releases/download/v13.9.9/draw.io-amd64-13.9.9.deb
RUN dpkg -i draw.io-amd64-12.3.2.deb
RUN apt -y -f install
RUN npm install github-wiki-sidebar -g

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]