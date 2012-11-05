#!/bin/bash

DIRNAME=`ls /root | grep bak`          #��ȡ/root/bak�ַ���

if [ -z "$DIRNAME" ]                 #���/root/bak�����ڣ��򴴽�һ��
then
mkdir /root/bak
cd /root/bak
fi

#��ȡ��ǰ�ꡢ�¡������ݴ洢��YY��MM��DD������
YY=`date +%y`
MM=`date +%m`
DD=`date +%d`

BACKETC=$YY$MM$DD_etc.tar.gz                #�����ļ�������
tar zcvf $BACKETC /etc                          #��/etc�����ļ����
echo "fileback finished!"
