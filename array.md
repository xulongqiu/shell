## array
  
\#!/bin/bash
> 数组中可以存放多个值, bash shell只支持一维数组(不支持多维数组),初始化时不需要定义数组大小。
>与大部分变成语言类似，数组元素的下标由0开始.
> Shell 数组用括号来表示， 元素用‘空格’符号分隔开.
```
array_name=(value1 value2 ... valuen)
```

- **实例**
```
my_array=(A B "C" D)
```
也可以用下标定义数组
```
my_array[4]=E
my_array[5]=F
```
- **读取数组**
  读取数组元素的值一般格式是:
```
${array_name[index]} 
for name in $array_name; do
    echo $name
done
```
- **实例**
```
my_array=(A B C "D")
echo "first  element is : ${my_array[0]}"
echo "second element is : ${my_array[1]}"
echo "third  element is : ${my_array[2]}"
echo "forth  element is : ${my_array[3]}"
```
- **获取数组中所有元素**
```
my_array[0]=fly
my_array[1]=eric
my_array[2]=robin
my_array[3]=james
echo "all elements(*): ${my_array[*]}"
echo "all elements(@): ${my_array[@]}"
```
- **获取数组长度**
  获取数组长度的方法和获取字符串长度的方法相同，例如:
```
echo "elements cnt of my_array(*): ${#my_array[*]}"
echo "elements cnt of my_array(@): ${#my_array[@]}"
```
