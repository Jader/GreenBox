# GreenBox

[![License](https://img.shields.io/packagist/l/inhere/console.svg)](LICENSE)
[![Language](https://img.shields.io/badge/language-shell-green.svg)](README.md)

 :game_die: 娱乐项目，使用 Crontab 定时提交 Commits。点亮绿格子；对就是绿
 
## use 

1、Fork Project

2、Clone 刚刚 Fork 产生的项目

3、配置 Deploy keys 或设置 git 使其能在服务端正常push

4、配置 Crontab，这里配置了1小时执行一次，可以自行调整执行频率，项目路径也可以自行调整。还有需要注意的是 init.sh 需要执行权限

    0 * * * * /bin/bash /root/GreenBox/init.sh >/dev/null 2>&1
    
5、push 这步其实就只是验证是否推送正常
