# [Docker Calibre Server]

The image contains a minimal [Calibre](https://calibre-ebook.com/) installation and starts a Calibre server. The current version should correspond with the [latest Calibre release](https://github.com/kovidgoyal/calibre/releases).

**Note:** This image is unofficial and not affiliated with Calibre.

## This version

My version is for use as docker-compose mainly. I was inspired by this [repo](https://github.com/wietsedv/docker-calibre-server), but instead of whitelisting the hosts that should have read/write access, I chose to use the auth mode present in Calibre, and created a default user that can access/modify the library, regardless the user IP.

## Usage

Calibre server is a REST API + web interface for Calibre. For more information about usage of `calibre-server` itself, refer to the [user guide](https://manual.calibre-ebook.com/server.html) and the [CLI manual](https://manual.calibre-ebook.com/generated/en/calibre-server.html) of Calibre.

### Steps

Create an `.env` file and define the next variables:
```
LIBRARY=/path/to/your/calibre-library/
PORT=1234
```

Then execute:

```
$ docker-compose up -d
```
From now on, on each system start, the calibre service will start on daemon mode.
Now go to `host-ip:PORT`, where `host-ip` is the IP of the machine where the docker is running on, and `PORT` the port number you defined in the `.env` file. You must issue the default credentials to access the calibre library (username: user. password: 1234).


### Add/modify users

With an intance of the calibre service running in the background, get inside the container:

```
$ docker-compose exec calibre bash
```

Now issue the command:

```
$ calibre-server --userdb users/users.sqlite --manage-users
```

Now, you should be able add/edit/remove users.
