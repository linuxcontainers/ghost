FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN apk --update add unzip curl --no-cache \
#     && npm install -g npm@9.6.4
     && npm install npm@latest -g

#RUN curl -sSLO https://github.com/laosb/ghos3/archive/refs/heads/main.zip && \
#	unzip ./*.zip -d ghos3 && \
#	rm ./*.zip

RUN npm install ghos3 \
    && mkdir -p ./content/adapters/storage \
    && cp -r ./node_modules/ghos3 ./content/adapters/storage/s3 

