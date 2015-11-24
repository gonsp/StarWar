#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Take an optional argument: the basename of the game file.
game="maze3"          # default game
if [ "$#" -ge 1 ]; then
  game=$1
fi

Player1=ClonRandom
Player2=ClonRandom1
Player3=ClonRandom1
Player4=ClonRandom1

VIEWER_PATH=Viewer

./Game $Player1 $Player2 $Player3 $Player4 -s 586945 < ${game}.cnf > $VIEWER_PATH/${game}.res

start firefox "file:///C:/Users/Gonzalo/Documents/Programacion/C++_Workspace_Qt-Creator/StarWar/$VIEWER_PATH/viewer.html?game=${game}.res"
