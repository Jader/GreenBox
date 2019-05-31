# GreenBox

[![License](https://img.shields.io/packagist/l/inhere/console.svg)](LICENSE)
![](https://img.shields.io/badge/language-shell-green.svg)

 :game_die: 娱乐项目，使用 Crontab 定时提交 Commits。点亮绿格子；对就是绿
 
## use 

1、Fork Project

2、配置 Deploy keys 或设置 git 使其能在服务端正常push

3、配置 Crontab，这里配置了1小时执行一次，可以自行调整执行频率，项目路径也可以自行调整

    0 * * * * sh /root/GreenBox/init.sh >/dev/null 2>&1
    
4、push 这步其实就只是验证是否推送正常
    
    

    

