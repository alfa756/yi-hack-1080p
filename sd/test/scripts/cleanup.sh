#!/bin/sh
#Delete files and folders more than 15 days

dir="/home/hd1/record/"
days=+15
dt=`date +%y%m%d`
#echo $dir
#echo $days
#echo $dt
#Command:
du -sh ${dir} > ${dir}Delete_$dt.log
find ${dir} -mtime $days -exec rm -Rf {} \;
du -sh ${dir} >> ${dir}Delete_$dt.log
echo "Works!"