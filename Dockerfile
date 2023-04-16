FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN  npm install -g npm@latest \
    && npm install ghost-storage-adapter-s3 \
    && mkdir -p ./content/adapters/storage \
    && cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3 

