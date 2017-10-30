FROM microsoft/windowsservercore

LABEL maintainer "Jakub Vanak"

SHELL ["powershell", "-command"]

RUN Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned; \
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh'); \
    scoop install nodejs -g

RUN mkdir bwipjs
WORKDIR C:\\bwipjs

RUN npm install bwip-js; \
    npm install http-server; \
    npm install forever -g

COPY content/* "c:/bwipjs/node_modules/bwip-js/"
WORKDIR C:\\bwipjs\\node_modules\\bwip-js

EXPOSE 80 3030

CMD .\run.cmd