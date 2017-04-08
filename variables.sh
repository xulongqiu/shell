#########################################################################
# File Name: variables.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017年04月08日 星期六 22时35分06秒
#########################################################################
#!/bin/bash

# - **定义变量**
#<<code
variable_name="value"
#>>

:<<comment
**注意:**
 1. 定义变量时,变量名variable_name 不能写成$variable_name;
 2. 变量名和等号之间不能有空格,等号和值之间也不能有空格;
 3. 变量名规则,首字符必须为字母或者下划线(_),中间不能有空格,可以使用下划线(_)和数字,不能使用标点符号,不能使用bash关键字.
comment

# - **定义变量举例**
#<<code
myUrl="https://github.com/xulongqiu/shell"
myNum=100
#>>

# - **使用变量**
# 使用一个定义过的变量，只要在变量名字前面加上美元符号($)即可，如：
#<<code
echo "Please open the URL: ${myUrl}, if can not open ,please try it $myNum times"
#>>

# 变量名外面的花括号是可选的，加花括号是为了帮助解释器识别变量边界，比如下面的这种情况：
#<<code
for skill in Perl Shell Python Java; do
    echo "I am good at ${skill}Script"
done
#>>
# 如果不给skill变量加花括号， 写成 ```echo “I am good at $skillScript”```, 解释器就会把$skillScript当成一个变量(其值为空),代码执行结果就不是我们所期望的了。
# *推荐给所有变量都加上花括号,这是一个好习惯!*

# - **重新定义变量**
# 已经定义的变量可以被重新赋值，也可以被重新定义，如:
#<<code
myUrl="https://github.com/xulongqiu/shell/tree/develop"
echo ${myUrl}
#>>
# **注意:** 这样写是合法的，但注意，第二次赋值时变量不能加$, 记住，变量只有在使用的时候才需要加上$.

# - **只读变量**
# 使用 **readonly** 命令可以将变量定义为只读变量，只读变量的值不能被修改。
#<<code
readonly myUrl
myUrl="https://github.com/xulongqiu/shell"
#>>

# 运行脚本，结果会报错:
# ```myUrl: readonly variable.```

:<<comment
- **删除变量**
使用 **unset**可以删除变量，语法:
```unset variable_name```
变量被删除后不能再使用, unset 命令不能删除只读变量。
comment

# 举个例子:
#<<code
varUnset="example for unset"
echo ${varUnset}
unset varUnset
echo ${varUnset}
#>>
# 上面的脚本第二次，没有任何输出

:<<comment
- **变量类型**
 - 局部变量
 局部变量在脚本或命令中定义，仅在当前脚本实例中有效，其他shell脚本不能访问局部变量。
 - 环境变量
 所有的脚本程序都可以访问。
 - shell变量
 shel变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行。
comment

