FROM ghost:alpine

WORKDIR /var/lib/ghost

#RUN apk --update add unzip curl --no-cache \
#     && npm install npm@latest -g


RUN npm install ghos3 \
    && mkdir -p ./content/adapters/storage \
    && cp -r ./node_modules/ghos3 ./content/adapters/storage/s3

