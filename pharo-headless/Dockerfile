FROM pierceng/pharovm-alpine:839a5ca
RUN addgroup -g 1099 pharoapp \
  && adduser -D -u 1099 -G pharoapp -h /home/pharoapp pharoapp \
  && chown -R pharoapp:pharoapp /pkg/image \
  && chown root:root /pkg/image/$SOURCES_NAME
USER pharoapp:pharoapp
ENTRYPOINT ["/pkg/vm/pharo", "-headless", "${IMAGE_NAME}", "--no-quit"]
