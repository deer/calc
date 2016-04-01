FROM node:4.4.1

RUN useradd --user-group --create-hom --shell /bin/false app &&\
    npm install --global npm@3.8.3

ENV HOME=/home/app

COPY app/package.json app/npm-shrinkwrap.json $HOME/calc/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/calc
#RUN npm install

#USER root
#COPY . $HOME/calc
#RUN chown -R app:app $HOME/*
#USER app

#CMD ["npm", "start"]
