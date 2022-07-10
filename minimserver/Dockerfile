FROM minimworld/minimserver:2.1

COPY ./ffmpeg /opt/minimserver/bin/

RUN chmod +x /opt/minimserver/bin/ffmpeg

EXPOSE 9790 9791

ENTRYPOINT [ "/opt/minimserver/bin/startc" ]