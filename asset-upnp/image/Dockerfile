FROM alpine
RUN wget -q -O - "http://www.dbpoweramp.com/install/AssetUPnP-Linux-x64.tar.gz" | tar -C /opt/ -xz && \
    ln -s "$(find /opt/ -mindepth 1 -maxdepth 1 -type d | head -n 1)/bin/AssetUPnP" /usr/bin/asset
RUN  mkdir /data
ENV  _APPDATA_OVERRIDE=/data
STOPSIGNAL SIGINT
CMD  asset