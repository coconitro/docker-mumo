# docker-mumo
Mumble admin scripts running in a container

## Prerequisites

 * A mumble server running via docker

## Usage
First run the container and it will create all the necessary config files and exit.
```
docker run --name mumo --net=container:`id_of_mumble_server_container` -d -v /path/to/mumo/folder:/data mycatisblack/mumo
```
Edit mumo.ini and copy config files from `modules_available` to `modules_enabled` that you want to activate. Make any edits to those files. Then fire the container up again.
```
docker start mumo
```
