#########################################################################
# File Name: firstShell.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017年04月08日 星期六 22时24分10秒
#########################################################################
#!/bin/bash

# - echo something
#<<code
echo "This is my first shell script!"
#>>

:<<comment
**#!**, 读作sharp bang. 告诉系统的使用/bin/bash 解释器执行该脚本
**echo**, 打印字符串到输出设备
comment

# - read from stdin
#<<code
echo "What is your name?"
read name
echo "Hello, ${name}!!"
#>>

:<<comment
**read**, 从输入设备读取字符串
**${name}**, 变量引用
comment

