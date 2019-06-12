# GreenBox

[![License](https://img.shields.io/packagist/l/inhere/console.svg)](LICENSE)
[![Language](https://img.shields.io/badge/language-shell-green.svg)](README.md)

 :game_die: 娱乐项目，使用 Crontab 定时提交 Commits。点亮绿格子；对就是绿
 
## use 

1、Fork Project

2、Clone 刚刚 Fork 产生的项目

3、配置 Deploy keys 或设置 git 使其能在服务端正常push

4、配置 Crontab，这里配置了8小时执行一次，可以自行调整执行频率，项目路径也可以自行调整。还有需要注意的是 init.sh 需要执行权限

    0 */8 * * * /bin/bash /root/GreenBox/init.sh >/dev/null 2>&1
    
5、push 这步其实就只是验证是否推送正常

### 补上之前的提交记录

比如，想要修改时间段位2019-01-01~2019-01-31，那么需要修改系统时间为2019-01-31，（不同系统修改时间不一致，具体可以针对性修改）脚本如下：

    timedatectl set-time '2019-01-31 23:00:00'
    
修改完执行
    
    screen -d -m sh loop.sh 31
    
## 效果

![](https://uimg.jadert.com/2019-06-12-15603212015621.jpg?imageView2/0/format/jpg/interlace/1/q/75|watermark/2/text/SmFkZQ==/font/5b6u6L2v6ZuF6buR/fontsize/720/fill/I0U5RThFOA==/dissolve/81/gravity/SouthEast/dx/10/dy/10)



 
