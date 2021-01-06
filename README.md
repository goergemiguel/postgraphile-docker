# Starter setup for running Postgraphile in Docker

_Reference: [https://www.graphile.org/postgraphile/running-postgraphile-in-docker/](https://www.graphile.org/postgraphile/running-postgraphile-in-docker/)_

## Build Images

Build images for all services in docker-compose.yml

`docker-compose build`

You can also build images one by one

For instance you can build the database image like this

`docker-compose build db`

And build the graphql image like this

`docker-compose build graphql`

## Run Containers

Run containers for all services in docker-compose.yml
`docker-compose up`

Run containers as daemon (in background)
`docker-compose up -d`

Run only the database container as daemon
`docker-compose up -d db`

Run only the GraphQL container as daemon
`docker-compose up -d graphql`

## Re-initialize The Database

In case you do changes to the database schema by modifying the files in /db/init, you will need to re-initialize the database to see these changes. This means you need to delete the Docker Volume, the database Docker Image and rebuild it.

Stop running containers
`docker-compose down`

List Docker volumes
`docker volume ls`

Delete volume
`docker volume rm <your_repository_name>_db`

Delete database image to force rebuild
`docker rmi db`

Run containers (will automatically rebuild the image)
`docker-compose up`
