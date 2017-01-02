#!/data/data/com.termux/files/usr/bin/bash

clear

echo " ######\  ##\   ##\ ##\     ##\  ######\  ##\   ##\ ##\     ##\ ";
echo "##  __##\ ## | ##  |\##\   ##  |##  __##\ ## |  ## |\##\   ##  |";
echo "## /  \__|## |##  /  \##\ ##  / ## /  \__|## |  ## | \##\ ##  / ";
echo "\######\  #####  /    \####  /  ## |####\ ## |  ## |  \####  /  ";
echo " \____##\ ##  ##<      \##  /   ## |\_## |## |  ## |   \##  /   ";
echo "##\   ## |## |\##\      ## |    ## |  ## |## |  ## |    ## |    ";
echo "\######  |## | \##\     ## |    \######  |\######  |    ## |    ";
echo " \______/ \__|  \__|    \__|     \______/  \______/     \__|    ";
echo ''
echo 'Logged In!'
echo ''
python2 nf.py
echo ''

curl -s -N http://wttr.in/mogofores | head -n 7

echo ''
echo ''
echo 'Your tasks for today:'
echo ''
wunderline today
