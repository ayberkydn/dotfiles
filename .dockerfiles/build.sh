#! /bin/bash

for file in $(ls -d */)
do
    dir_name=${file%?} #it removes last character (which is /) but i dont know how
    docker build -t ayberkydn/$dir_name $dir_name
done
