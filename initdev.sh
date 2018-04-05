#! /bin/bash

file_create=$1
var=$2

cd "/home/initdev"






if [ "-py" == "$2" ]||[ "-h" == "$1" ]||[ "-cpp" == "$2" ]||[ "-c" == "$2" ]||[ "-latex" == "$2" ]||[ "$2" == "-beamer" ]||[ "$2" == "-GPL" ]||[ "$2" == "-MIT" ]; then

if [ "$file_create" == "-h" ]; then
 

  echo "name : initedev"

  echo "syntax: initdev name-project <args>"

  echo "   args:"

  echo "   -cpp: for for create programme cpp"

  echo "   -c: for create programme C"
    
  echo "   -py: for create programme python"

  echo "   -beamer: for create programme beamer"

  echo "   -latex: for create programme Latex"

  echo "   -GPL: for create programme GPL"

  echo "   -MIT: for create programme MIT"
else
   if [ "$var" == "-c" ]; then	
	 cd "source/Project_C"
	 mkdir "$file_create"
	 cd "$file_create"
	 mkdir "licenes"
     mkdir "makfile"
     mkdir "main"
     cd "main"
     touch "$file_create.c"
	 echo '#include <stdio.h>
     #include <stdlib.h>
     int main()
      {
       printf("Hello world!");
       return 0;/
      }'>>"$file_create.c"
  else 
	    if [ "$var" == "-cpp" ]; then
	     cd "source/Project_cpp"
	     mkdir "$file_create"
	     cd "$file_create"
	     mkdir "licenes"
         mkdir "makfile"
         mkdir "main"
         cd "main"
         touch "$file_create.cpp"
		 echo '#include <stdio.h>
          #include <stdlib.h>
             int main()
             {
               cout<<"Hello world!";
               return 0;/
               }'>>"$file_create.c"
	    else	
		    if [ "$var" == "-py" ]; then
	           cd "source/Project_Python"
	           mkdir "$file_create"
	           cd "$file_create"
	           mkdir "licenes"
               mkdir "makfile"
               mkdir "main"
               cd "main"
               touch "$file_create.py"
		     echo ">>> nom = raw_input('Quel est ton nom ?')
                   Quel est ton nom ?
                   >>> if nom.lower() == 'pascal':
                   ...     print 'Bonjour le prof !'
                   ... else:
                   ...     print 'Bonjour !'
                   ...">>"$file_create.Py"
		  else  
		     if [ "$var" == "-latex" ]; then
	             cd "source/Project_Latex"
	             mkdir "$file_create"
	             cd "$file_create"
	             mkdir "licenes"
                 mkdir "makfile"
                 mkdir "main"
                 cd "main"
                 touch "$file_create.Latex"
		        echo 'rien de command;'>>"$file_create.Latex"
		      else
		      	if [ "$var" == "-beamer" ]; then
	               cd "source/Project_Beamer"
	               mkdir "$file_create"
	               cd "$file_create"
	               mkdir "licenes"
                   mkdir "makfile"
                   mkdir "main"
                   cd "main"
		           touch "$file_create.tex"
		          echo 'rien de command;'>>"$file_create.tex"
		        else  
		        	if [ "$var" == "-GPL" ]; then
		        	 cd "licenes/Project_GPL"
		        	 mkdir "$file_create"
	                 cd "$file_create"
	                 mkdir "licenes"
                     mkdir "makfile"
                     mkdir "main"
                     cd "main"
		             touch "$file_create.GPL"
		             echo 'rien de command;'>>"$file_create.GPL"
		            else
		             if [ "$var" == "-MIT" ]; then
		        	 cd "licenes/Project_MIT"
		        	 mkdir "$file_create"
	                 cd "$file_create"
	                 mkdir "licenes"
                     mkdir "makfile"
                     mkdir "main"
                     cd "main"
		             touch "$file_create.MIT"
		             echo 'rien de command;'>>"$file_create.MIT"
		             fi
		            fi 
		        fi
		     fi
		   fi
	    fi
	fi

fi
else

echo "Uknown arguments, please check the help : initdev -h"

fi	




