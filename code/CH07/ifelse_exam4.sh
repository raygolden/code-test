#!/bin/bash
# script to determine a letter grade from a test score
  
  #��ʾ�û����������0-100��
echo "Please Input a integer(0-100): "
read score

#�ж�ѧ���ķ������
if [ "$score" -lt 0 -o "$score" -gt 100 ]
then
   echo "The score what you input is not integer or the score is not in (0-100)."
else
     if [ "$score" -ge 90 ]
     then
         echo "The grade is A!"
     else
          if [ "$score" -ge 80 ]
          then
              echo "The grade is B!"
          else
               if [ "$score" -ge 70 ]
              then
                   echo "The grade is C!"
              else
                   if [ "$score" -ge 60 ]
                   then
                        echo "The grade is D!"
                   else
                        echo "The grade is E!"
                   fi
              fi
         fi
    fi
fi

