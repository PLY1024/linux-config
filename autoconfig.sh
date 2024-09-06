#!/bin/bash

# 去掉ls -a返回结果中的. .. .git
files=$(ls -a $1|grep -E '.[^.]+' |grep -v .git)
for file in 'echo $files'; do
	ln -s $1/$file ~/$file
	# 在主目录下创建软链接
done
