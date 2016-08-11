docker-mapnik
===================

The purpose of this project is to provide a tile server using mapnik and tilestache.

## Mapnik

Mapnik is a Free Toolkit for developing mapping applications. It's written in C++ and there are Python bindings to facilitate fast-paced agile development. It can comfortably be used for both desktop and web development

## TileStache

TileStache is a Python-based server application that can serve up map tiles based on rendered geographic data.

## Building docker-mapnik

Running this will build a docker image with mapnik 3.0.10 and TileStache.

    git clone https://github.com/srounet/docker-mapnik
    cd docker-mapnik
    docker build -t mapnik .


## Running docker-mapnik

This image expose three ports 22 for ssh and 80 for Nginx/TileStache and 9001 for supervisord

    sudo docker run -d -P -v $(readlink --canonicalize ressources):/etc/tilestache/ressources/ -v $(readlink --canonicalize ressources/tilestache.cfg):/etc/tilestache/tilestache.cfg --name mapnik mapnik

## Image active users

The root password is `toor`.

## Supervisord remote access

Default user and password are: ma/ma1337

### Side note on tilestache

Use ressources folder to synchronize your mapnik styles.
Modify tilestache.cfg according to your needs, it should be synchronized with your Docker.
Don't forget to restart tilestache from uwsgi / supervisord.
