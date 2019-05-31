#!/bin/bash
#
# @Description : GreenBox
#
# @Date        : 2019-05-31 15:47
# @Author      : Jade
#

init(){
    CURDIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd )
	TIME=`date "+%Y-%m-%d %H:%M:%S"`
	echo $TIME >> $CURDIR/data.log
}

execute(){
	git add .
	if [ $? -ne 0 ]; then
	    exit 1
	fi
	git commit -m "Update "+$TIME
	git push -u origin master
}

init
if [ $? -ne 0 ]; then
    exit 1    
fi
execute

