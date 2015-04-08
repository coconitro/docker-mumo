#!/bin/bash

if [ ! -f /data/mumo.ini ]
then
  sed -i 's/mumo.log/\/data\/mumo.log/' /mumo/mumo.ini
  sed -i 's/modules\//\/data\/modules\//' /mumo/mumo.ini
  sed -i 's/modules-enabled\//\/data\/modules-enabled\//' /mumo/mumo.ini

  cp /mumo/mumo.ini /data
  chmod a+rw /data/mumo.ini

  mkdir -p /data/modules-enabled
  cp -r /mumo/modules /data
  ln -s /mumo/modules-available /data

  echo Created mumo default config data. Exiting.
  exit 1
fi

/mumo/mumo.py -ini /data/mumo.ini
