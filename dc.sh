#!/bin/bash

echo "DB/Textworks to Dublin Core Convertor. V1.0 By Kieran O'Leary. "


# original messy code 
	#sed -i -e 's/<inm:Title>/<dc:title>/g;s/<inm:Date>/<dc:date>/g;s/<inm:Subject-Headings>/<dc:subject>/g;s/<\/inm:Date>/<\/dc:date>/g;s/<\/inm:Subject-Headings>/<\/dc:subject>/g;s/<inm:Reference-Number>/<dc:identifier>/g;s/<\/inm:Reference-Number>/<\/dc:identifier>/g;s/<inm:Language>/<dc:language>/g;s/<\/inm:Language>/<\/dc:language>/g' "$1"

SEDSTR='s/<inm:Title>/<dc:title>/g'
SEDSTR="$SEDSTR;"'s/<inm:Date>/<dc:date>/g'
SEDSTR="$SEDSTR;"'s/<inm:Subject-Headings>/<dc:subject>/g'
SEDSTR="$SEDSTR;"'s/<\/inm:Date>/<\/dc:date>/g'
SEDSTR="$SEDSTR;"'s/<\/inm:Subject-Headings>/<\/dc:subject>/g'
SEDSTR="$SEDSTR;"'s/<inm:Reference-Number>/<dc:identifier>/g'
SEDSTR="$SEDSTR;"'s/<\/inm:Reference-Number>/<\/dc:identifier>/g'
SEDSTR="$SEDSTR;"'s/<inm:Language>/<dc:language>/g'
SEDSTR="$SEDSTR;"'s/<\/inm:Language>/<\/dc:language>/g'
SEDSTR="$SEDSTR;"'s/<\/inm:Title>/<\/dc:title>/g'
#this deletes lines that start with in magic but doesn't work for long strings as they move to a new line. Perhaps something like ALL LINES NOT STARTING WITH DC"
#sed -i '' '/^<inm/d' "$1"
#sed -i '' '/^<\/inm/d' "$1"


sed -i -e "$SEDSTR" "$1"
sed -i '' '/^<dc/!d' "$1"
