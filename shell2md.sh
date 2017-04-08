#########################################################################
# File Name: shell2md.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017年04月08日 星期六 23时35分49秒
#########################################################################
#!/bin/bash

# ./shell2md.sh firstShell.sh
# $1=firstShell.sh
# extension=${$1##*.}
# name=${$1%.*}

if [ -f $1 ] && [ $# -eq 1 ] && [ ${1##*.} == "sh" ]; then
    mdName=${1%.*}
    echo  \#\#${mdName} > ${mdName}.md 
else
    echo "Usage: $0 shellfile"
fi

mdFile=${mdName}.md
startFlag=0
codeFlag=0
commentFlag=0
IFS=
cat $1 | 
while read line; do
    if [ "$line" == '#!/bin/bash' ]; then
        startFlag=1
        echo '\#!/bin/bash' >> ${mdFile}
        continue
    fi
    
    if [ $startFlag -eq 0 ];then
        continue
    fi

    if [ "$line" == '#<<code' ]; then
        codeFlag=1
        echo '```' >> ${mdFile}
        continue
    elif [ "$line" == '#>>' ]; then
        codeFlag=0
        echo '```' >> ${mdFile}
        continue
    fi

    if [ "$line" == ':<<comment' ]; then
        commentFlag=1
        continue
    elif [ "$line" == 'comment' ]; then
        commentFlag=0
        continue
    fi

    if [ $codeFlag -eq 1 ];then
        echo "$line" >> ${mdFile}
    elif [ $commentFlag -eq 1 ]; then
        echo "$line" >> ${mdFile}
    elif [ "$line" != "" ]; then 
        echo ${line:2} >> ${mdFile}
    fi
done

