FROM redis:alpine
WORKDIR /usr/local/src
RUN apk add --no-cache make libressl-dev g++ build-base gcc
COPY . .
RUN make
RUN ls
CMD ["redis-server", "--loadmodule", "/usr/local/src/rd_themis.so"]
