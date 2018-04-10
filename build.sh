#!/bin/bash


tar_file='zentao.tar.gz'

wget http://sourceforge.net/projects/zentao/files/9.8.3/ZenTaoPMS.9.8.3.zbox_64.tar.gz/download -O zentao.tar.gz
# wget http://dl.cnezsoft.com/zentao/9.8.3/ZenTaoPMS.9.8.3.zbox_64.tar.gz -O $tar_file

tar zxvf $tar_file
rm $tar_file

docker build -t 'x000zh/docker-zentao' .
