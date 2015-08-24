#!/bin/bash

echo "DB/Textworks to Dublin Core Convertor. V1.0 By Kieran O'Leary. "


sed -i -e 's/<inm:Title>/<dc:title>/g;s/<inm:Date>/<dc:date>/g;s/<inm:Subject-Headings>/<dc:subject>/g;s/<\/inm:Title>/<\/dc:title>/g;s/<\/inm:Date>/<\/dc:date>/g;s/<\/inm:Subject-Headings>/<\/dc:subject>/g;s/<inm:Reference-Number>/<dc:identifier>/g;s/<\/inm:Reference-Number>/<\/dc:identifier>/g;s/<inm:Language>/<dc:language>/g;s/<\/inm:Language>/<\/dc:language>/g' "$1"

#this deletes lines that start with in magic but doesn't work for long strings as they move to a new line. Perhaps something like ALL LINES NOT STARTING WITH DC"
#sed -i '' '/^<inm/d' "$1"
#sed -i '' '/^<\/inm/d' "$1"

echo "Your files have been converted. Have a good day."
