FROM busybox

ENV BUILD_DIR /app
RUN mkdir $BUILD_DIR

WORKDIR "$BUILD_DIR"

COPY words.txt ./
COPY status.txt ./
COPY ip.txt ./
COPY gen.sh ./

CMD ["sh", "-c", "$BUILD_DIR/gen.sh"]
