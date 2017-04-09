#########################################################################
# File Name: string.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017年04月09日 星期日 22时01分14秒
#########################################################################
#!/bin/bash

# 字符转是shell编程中最常见的数据类型， 字符串可以用单引号，也可以用双引号， 也可以不用引号。
# - **单引号**
#<<code
str='this is string'
#>>

# 单引号字符串的限制:
#  - 单引号里任何字符都会原样输出，单引号中变量是无效的；
#  - 单引号字符串中不能出现单引号, 即使使用转义符也不行.

# - **双引号**
#<<code
name='eric'
str="Hello, I know your name are \"${name}\"!"
echo ${str}
#>>
:<<comment
双引号的优点:
 - 在双引号里可以使用变量
 - 双引号里可以出现转义字符
comment

# - **获取字符串长度**
#<<code
string="abcd"
echo ${#string}
#>>

# - **截取字符串**
# 假设有变量
#<<code
var=https://github.com/xulongqiu/shell/blob/master/README.md
#>>
#  1. **#**号截取,删除左边的字符，保留右边的字符
#<<code
echo ${var#*//}
#>>
:<<comment
其中var是变量名, # 号是运算符(表示删除左边字符),*//表示从左边开始删除第一个//号及左边的所有字符
即删除https://， 所以结果位: github.com/xulongqiu/shell/blob/master/README.md
comment

#  2. **##**号截取，删除左边字符，保留右边字符
#<<code
echo ${var##*/}
#>>
:<<comment
**##*/** 表示从最左边开始向右删除，一直删除到最右边的/号为止, 
即删除 https://github.com/xulongqiu/shell/blob/master/
结果为: README.md
comment

#  3. **%**截取， 删除右边字符，保留左边字符
#<<code
echo ${var%/*}
#>>
:<<comment
%/* 表示从最右边开始向左删除，遇到第一个/ 并删除,为止,即删除/README.md,
结果为: https://github.com/xulongqiu/shell/blob/master
comment

#  4. **%%**截取,删除右边字符, 保留左边字符
#<<code
echo ${var%%/*}
#>>
:<<comment
%%/* 表示从最右边开始向左删除，直到删除完最左边的/符号为止, 
所以结果为: https:
comment

#  5. 从左边第几个字符开始，及字符的个数
#<<code
echo ${var:0:6}
#>>
:<<comment
其中0表示从第一个字符开始，一共截取6个字符, 即: https:
comment

#  6. 从左边第几个字符开始，直到结束
#<<code
echo ${var:8}
#>>
:<<comment
其中8表示从左边第九个字符开始到结束
结果为:github.com/xulongqiu/shell/blob/master/README.md
comment

#  7. 从右边第几个字符开始，及字符的个数
#<<code
echo ${var:0-9:6}
#>>
:<<comment
其中0-9表示右边算起第九个字符开始向右取, 共取6个字符，即:README
comment

#  8. 从右边第几个字符开始到结束
#<<code
echo ${var:0-9}
#>>
:<<comment
表示从右边第九个字符开始，一直到结束,结果为: README.md
注:(左边的第一个字符用0表示，右边的第一个字符用0-1表示)
comment
