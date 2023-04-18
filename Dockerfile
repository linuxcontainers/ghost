FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN apk --update add unzip curl --no-cache \
     && npm install npm@latest -g


RUN npm install ghos3 \
    && mkdir -p ./content/storage \
    && cp -r ./node_modules/ghos3 ./content/storage/s3

