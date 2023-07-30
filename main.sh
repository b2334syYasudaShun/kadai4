#!/usr/bin/bash

# 入力数
if [ $# -ne 2 ]; then
        echo "引数は2つの数値を指定してください。"
        exit 1
fi

#　入力が正の自然数
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]] || ! [[ "$2" =~ ^[1-9][0-9]*$ ]]; then
        echo "引数は正の自然数を指定してください。"
        exit 1
fi

# メインの処理
if [ $1 -lt $2 ]; then
        num1=$2
        num2=$1
fi

num1=$1
num2=$2

while [ $num2 -ne 0 ]; do
        remainder=$((num1 % num2))
        num1=$num2
        num2=$remainder
        if [ $num2 -eq 1 ]; then
                break
        fi
done

if [ $num2 -eq 1 ]; then
        echo $num2
else
        echo $num1
fi
