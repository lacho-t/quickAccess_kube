#!/bin/bash
# This script is only aviable to lxc tool 
# display warning to user


# test connect container to k8s huawei
echo 'Prueba k8s liquidaciones-sm'
## command to get silngle data from csv file
## cut -d "," -f3 info-list.csv | tail 
#container = cut -d "," -f3 info-list.csv | tail  | grep liquidaciones
container=$(cut -d "," -f3 ../info-list.csv | tail  | grep liquidaciones)
echo 'salida uno'
ssh lct@$container.lct "kubectl cluster-info"
echo
echo 'salida dos'
lxc exec $container -- su lct -c "cd && kubectl cluster-info"
# lxc exec $container -- sudo --login --user lct -- kubectl cluster-info
# lxc exec mycontainer -- sudo --login --user ubuntu

# reference https://www.baeldung.com/linux/csv-parsing
echo "################################### OTHER TEST ######################################"
echo "Displaying the contents of array mapped from csv file:"
# set a single line of csv file into array
arr_record1=( $(tail -n +2 ../info-list.csv | cut -d ',' -f1) )


readarray -t arr_csv < ../info-list.csv
index=0





