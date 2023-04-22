FROM ghost:latest

RUN npm install ghost-storage-adapter-s3

RUN cp -vr ./node_modules/ghost-storage-adapter-s3 ./current/core/server/adapters/storage/s3

EXPOSE 2368

CMD ["ghost", "start"]

