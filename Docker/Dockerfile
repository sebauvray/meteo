FROM node:current-alpine3.15

ARG CURRENT_PATH \
    MAIL \
    NAME \
    WORKINGDIR
    
ENV ENV_CURRENT_PATH=$CURRENT_PATH \
    ENV_MAIL=$MAIL \
    ENV_NAME=$NAME \
    ENV_WORKINGDIR=$WORKINGDIR

RUN apk --no-cache add curl git
RUN npm i -g @nestjs/cli

WORKDIR $ENV_WORKINGDIR

USER $USER