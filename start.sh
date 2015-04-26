#!/bin/bash

if [ ! -f /data/mumo.ini ]
then
  cp /mumo/mumo.ini /data

  sed -i 's/mumo.log/\/data\/mumo.log/' /data/mumo.ini
  sed -i 's/modules\//\/data\/modules\//' /data/mumo.ini
  sed -i 's/modules-enabled\//\/data\/modules-enabled\//' /data/mumo.ini

  chmod a+rw /data/mumo.ini
  cp -r /mumo/modules-available /data
  mkdir -p /data/modules-enabled

  echo Created mumo default config data. Exiting.
  exit 1
fi

cp -rv /data/modules-enabled /mumo
cp -rv /data/mumo.ini /mumo
./mumo.py

