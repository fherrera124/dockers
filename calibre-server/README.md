# [Docker Calibre Server]

Automatically updating Docker image for `calibre-server`. The image contains a minimal [Calibre](https://calibre-ebook.com/) installation and starts a Calibre server. The current version should correspond with the [latest Calibre release](https://github.com/kovidgoyal/calibre/releases).

**Note:** This image is unofficial and not affiliated with Calibre.

Version inspired from https://github.com/wietsedv/docker-calibre-server

## This version

My version is for use as docker-compose mainly. For my own purposes, and access to the library from different ips, I choose to go to auth mode, instead of manualy whitelist ip. So I created a default user.

## Usage

Calibre server is a REST API + web interface for Calibre. For more information about usage of `calibre-server` itself, refer to the [user guide](https://manual.calibre-ebook.com/server.html) and the [CLI manual](https://manual.calibre-ebook.com/generated/en/calibre-server.html) of Calibre.

### Steps

Create an .env file and define the next variables:
```
LIBRARY=/path/to/your/calibre-library/
PORT=7777
```

Then execute

```
$ docker-compose up -d
```
From now on, on each system start, the calibre service will start on daemon mode.
Now go to `host-ip:7777`, where host-ip is the ip of the machine where the docker is running on. You must input the
default credentials (username: user. password: 1234).


### Add/modify users

With an intance of the calibre service running in the background, get inside the container:

```
$ docker-compose exec calibre bash
```

now you should have access at the terminal of the running container. Now run:

```
$ calibre-server --userdb users/users.sqlite --manage-users
```

After that command, you should be able add/edit/remove users.
