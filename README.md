# Dockerized Environment

* [Initial Setup](#initial-setup)
* [Usage](#usage)
* [Using Normal Web Server](#using-normal-web-server)
* [Using PHP 5.6](#using-php-56)
* [Using PHP 7.1](#using-php-71)
* [Docker Compose Usage](#docker-compose-usage)

## Initial Setup

* Mac users: [follow this guide](https://docs.docker.com/docker-for-mac/)
* PC users: [follow this guide](https://docs.docker.com/docker-for-windows/)

## Usage

* Run `docker-compose up -d` to start the services in a background process (omitting -d leaves the service running in the foreground)
* Run `docker-compose down` to stop the running services
* Run `docker-compose build` everytime there is update to dockerfile

## Using Normal Web Server

* Go into static-html folder `cd static-html`
* Refer to [Usage](#usage)
* Open (http://localhost:8080/) to see your static content run from the container

## Using PHP 5.6

* Go into static-html folder `cd php-56`
* Refer to [Usage](#usage)
* Open (http://localhost:8085/) to see your php run from the container

## Using PHP 7.1

* Go into static-html folder `cd php-71`
* Refer to [Usage](#usage)
* Open (http://localhost:8087/) to see your php run from the container

## Docker Compose Usage

`docker-compose` manages a collection of "services" defined in the `docker-compose.yml`. A service is composed of one or more containers. In the `.yml` file, you can "compose" an "application" by defining and connecting these services.

`docker-compose` operates in the context of the current directory (project). Containers managed by `docker-compose` will be in the form of `[project]_[name]` where `[project]` is the directory name by default and `[name]` is the service name specified in `docker-compose.yml`.

* `docker-compose up -d [name]` to start the named service and its dependencies in the background
* `docker-compose stop [name]` to stop the named service
* `docker-compose rm [name]` to remove all containers for the named service
* `docker-compose logs [name]` to view the logs from a particular service

`[name]` is optional in the commands above. When omitted, it will apply the command to all containers managed in the current project.

* `docker-compose exec [name] [args]` to run `args` in the existing container for the named service
* `docker-compose run --rm [name] [args]` to create a new container for the named service, run `args`, and remove the container when done
