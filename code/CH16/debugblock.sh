#!/bin/bash

DEBUG()
{
 if [ "$DEBUG" = "true" ]
 then
    $@
 fi
}

a=0
b=2
c=100
DEBUG echo "a=$a b=$b c=$c"
while :                         
do
  DEBUG echo "a=$a b=$b c=$c"  
  if ((a >= 10))                 #��a���ڵ���10ʱ������whileѭ��
 then
        break
    fi

let "a=a+2"                       #a��b��cֵ���ϱ仯
let "b=b*2"
let "c=c-10"
done
