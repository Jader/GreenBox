#!/bin/bash
#
# @Description : GreenBox
#
# @Date        : 2019-05-31 15:47
# @Author      : Jade
#
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export PATH

init(){
    CURDIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd )
    TIME=`date "+%Y-%m-%d %H:%M:%S"`
    echo $TIME >> $CURDIR/data.log
    GIT=`which git`
}

execute(){
    $GIT add .
    if [ $? -ne 0 ]; then
        exit 1
    fi
    $GIT commit -m "Update $TIME"
    $GIT push
}

init
if [ $? -ne 0 ]; then
    exit 1
fi
execute
