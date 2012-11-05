#!/bin/bash

#������������������������
ROW=5
COL=5
declare -a MATRIX
 
 load_alpha ()
 {
 local rc=0
 local index
  
#forѭ����A-Y��25���ַ��洢��MATRIX����
 for i in A B C D E F G H I J K L M N O P Q R S T U V W X Y
  do
    local row=`expr $rc / $COL`
    local column=`expr $rc % $ROW`
    let "index = $row * $Rows + $column"
    alpha[$index]=$i
    let "rc += 1"
  done  
  }
  
  print_alpha ()
  {
  local row=0
  local index
 
  echo
  
  #���д�ӡMATRIX����
  while [ "$row" -lt "$ROW" ] 
  do                           
    local column=0
    echo -n "       " 
    while [ "$column" -lt "$COL" ]
    do
      let "index = $row * $Rows + $column"
      echo -n "${alpha[index]} " 
      let "column += 1"
    done
    let "row += 1"
    echo
  done
 echo
  }
  
  filter ()     # ���˵����������±�. 
  {
  
  echo -n "  "  # ������б. 
                # ����һ��, ������ô������. 
  
  if [[ "$1" -ge 0 &&  "$1" -lt "$ROW" && "$2" -ge 0 && "$2" -lt "$COL" ]]
  then
      let "index = $1 * $ROW + $2"
      # ����, ������ת������д�ӡ. 
      echo -n " ${alpha[index]}"
      #           alpha[$row][$column]
  fi    
 }
 
rotate ()  # ��������ת45�� --
 {          #+ �����½ǽ���"ƽ��". 
 local row
 local column
  
  for (( row = ROW; row > -ROW; row-- ))
    do  
    for (( column = 0; column < COL; column++ ))
    do
  
      if [ "$row" -ge 0 ]
      then
        let "t1 = $column - $row"
        let "t2 = $column"
     else
       let "t1 = $column"
       let "t2 = $column + $row"
     fi  
 
     filter $t1 $t2   # �����������±���˳���
   done
 
  echo; echo
  done 
 }
 
 #����������������������ά���飬���к���ת45���ӡ����
 load_alpha     # ��������
 print_alpha    # ��ӡ����
 rotate         # ��ʱ����ת45���ӡ
