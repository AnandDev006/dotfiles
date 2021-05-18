#!/bin/bash

function ccp() {
  FOLDER=$(pwd)
  FILE_NAME=$1
  FILE_BASE_NAME=${FILE_NAME%%.*}
  cd $FOLDER;

  g++ -std=c++17 -Wshadow -g -Wall -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG $FILE_NAME -o $FILE_BASE_NAME;
}

function ccp_fast() {
  FOLDER=$(pwd)
  FILE_NAME=$1
  FILE_BASE_NAME=${FILE_NAME%%.*}
  cd $FOLDER;

  g++ -std=c++17 -Wshadow -g -Wall -O2 -Wno-unused-result $FILE_NAME -o $FILE_BASE_NAME;
  
}

function cp() {
  
  ccp ${1-"a.cpp"}

  STARTCOLOR="\e[96m";
  ENDCOLOR="\e[0m";

  COUNT=1
  while :
  do
    printf "$STARTCOLOR%b$ENDCOLOR" "\tTESTCASE $COUNT \n"
    ./a
    ((COUNT++))
  done

}

function cpt() {
 
  ccp ${1-"a.cpp"}
 
  ./a < a.test
  
}

function pubip() {
<<<<<<< HEAD
  curl https://icanhazip.com/ --silent | tr -d '[:space:]' | pbcopy
}

function glassdoor() {
    echo "document.getElementById('HardsellOverlay').remove();
document.body.style.overflow = '';" | pbcopy
 }
=======
  curl https://icanhazip.com/ --silent | tr -d '[:space:]' | xclip -selection c
}
>>>>>>> 09a22b9378b8d97011336d23f519b1a59a6b3f16
