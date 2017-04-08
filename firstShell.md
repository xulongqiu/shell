##firstShell
\#!/bin/bash
- echo something
```
echo "This is my first shell script!"
```
**#!**, 读作sharp bang. 告诉系统的使用/bin/bash 解释器执行该脚本
**echo**, 打印字符串到输出设备
- read from stdin
```
echo "What is your name?"
read name
echo "Hello, ${name}!!"
```
**read**, 从输入设备读取字符串
**${name}**, 变量引用
