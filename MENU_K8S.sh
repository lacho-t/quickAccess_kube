#!/bin/bash
# Written by Enginer Horacio Rosales, @lachot_t <ciberlinux2@gmail.com>
# Date: 20 Jan 2022
# lacho rights only
echo 'Warning is a beta mode, no waranty to any'
echo '1 ----> List all k8s we have connections'
echo "2 ----> Add new k8s to list"
echo "3 ----> Send commands via kubectl"
read option

case $option
	"1")
            cut -d "," -f1,' ',f2 ../info-list.csv | tail  
	;;
	
esac
