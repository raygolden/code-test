#refor.sh�ű���forѭ�����ض���
#!/bin/bash

#��ls /etc�Ľ��д��loggg�ļ���
ls /etc > loggg

#����loggg�ļ������������������maxline����
#������while��untilѭ����������
#��������������ض������<�������÷����Բμ�ͼ10-25������
maxline=$(wc -l < loggg)              

#����loggg�ļ�����rc.d��ƥ����У����ƥ���е�����
for filename in `seq $maxline`       #����seq�������ѭ������
do
 read filename                   #���ж�ȡloggg�е�����

#let "count +=1"

#forѭ������Ҫ��if���ָ������ѭ��������
 if [ "$filename" = "rc.d" ]
 then
   break
 else
   let "count +=1"
 fi
done < loggg                    #����׼�����ض���loggg�ļ�

echo "$count times read"

#����ѭ��������ı�׼�����Ƿ��ض���
echo -n "-----Pls. Input Data:-----"
read test
echo $test

