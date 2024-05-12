# Postgre SQL Docker Script + Docker Compose

## Docker Script

this script will launch a psql at localhost:5432.
this cannot be accessed from another docker container. 
(read [this article](https://zenn.dev/gladevise/articles/access-localhost-from-docker-container#failed-to-connect-to-host.docker.internal-port-xxxx-after-0-ms%3A-connection-refused) for more info)

to run this, just execute
```sh
./run.sh
```
. you don't need other files.

## Docker Compose

this docker-compose.yml will work as part of your app's compose.yml (and template if yours don't have one)
this will make a psql accessible at postgresql:5432.

to run this, you need to:
- edit docker-compose.yml to fit your package,
    or copy corresponding part of it (under postgresql:) to your project's compose.yml
- copy ./postgresql/ to the project's directory
- delete run.sh (not necessary)

to start docker compose, run this at the root dir of your app
```sh
docker compose build --no-cache
docker compose up
```
