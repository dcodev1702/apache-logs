FROM busybox

ENV BUILD_DIR /app
RUN mkdir $BUILD_DIR

COPY words.txt "$BUILD_DIR"
COPY status.txt "$BUILD_DIR"
COPY ip.txt "$BUILD_DIR"
COPY gen.sh "$BUILD_DIR"

CMD ["sh", "-c", "$BUILD_DIR/gen.sh"]
