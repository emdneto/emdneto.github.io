#!/usr/bin/env bash

TITLE=$1
FILE_TITLE=""
DATE_NOW=$(date "+%F %H:%M:%S %z")
DATE_NOW_F=$(date "+%F")
LOWERCASE_TITLE=$(echo $TITLE | sed "s/ /-/g" | awk '{print tolower($0)}')
POST_FILE="_posts/$DATE_NOW_F-$LOWERCASE_TITLE.md"

cp post.tpl.md $POST_FILE
sed -i "s/TITLE/$TITLE/g" $POST_FILE
sed -i "s/DATE/$DATE_NOW/g" $POST_FILE
