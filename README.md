# docker-mumo
Mumble admin scripts running in a container

## Usage
First run the container and it will create all the necessary config files and exit.
```
docker run --name mumo --net=container:`id_of_mumble_server_container` -d -v /path/to/mumo/folder:/data nitropye/mumo
```
Edit mumo.ini and make symlinks to any modules you want to enable. Then fire the container up again.
```
docker start mumo
```
