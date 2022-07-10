## Stream your audio content easy with latest [liquidsoap 1.4.0](https://github.com/savonet/liquidsoap/releases/tag/1.4.0) extended by ladspa sound processing and [icecast-kh 2.4.0-kh12](https://github.com/karlheyes/icecast-kh/releases/tag/icecast-2.4.0-kh12)

---
#### Adding music
Copy your files/folders to [music](content/music) directory

---
#### To start with logs
```bash
docker-compose up
```

#### To start in background without logs
```bash
docker-compose up -d
```

#### To go to admin UIs
##### icecast
http://admin:hackme@localhost:8000/admin.html
##### supervisor
http://admin:hackme@localhost:9001/

---
#### To build
```bash
time docker-compose -f docker-compose.yml -f docker-compose-build.yml build --parallel
```
