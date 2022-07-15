#!/bin/bash

rm -rf mirror
mkdir mirror
cd mirror

CURLOPTS='-L -c /tmp/cookies -A eps/1.2'

curl $CURLOPTS -o ministers-1.html "https://www.parliament.gov.zm/ministers/cabinet"
curl $CURLOPTS -o ministers-2.html "https://www.parliament.gov.zm/ministers/cabinet?page=1"
curl $CURLOPTS -o ministers-3.html "https://www.parliament.gov.zm/ministers/cabinet?page=2"

cd ~-
