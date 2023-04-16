FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install ghost-storage-adapter-s3 \
    && mkdir -p ./content/adapters/storage \
    && cp -vr ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3

