#!/bin/bash
BINDIR=../bin/
LOCALEDIR=../src/globalization/
COMPILER=compiler/compiler.jar
SRCDIR=../src/

if [ ! -d "${BINDIR}" ]; then
	mkdir ${BINDIR}
fi

for file in ${LOCALEDIR}*.js; do
	name=`basename "$file"`
	locale=${name%.*}
	echo Compile ${locale}
	java -jar ${COMPILER} --js=${file} --js=${SRCDIR}core.js --js=${SRCDIR}sugarpak.js --js=${SRCDIR}parser.js --js=${SRCDIR}extras.js --js=${SRCDIR}time.js --js_output_file=${BINDIR}date-${locale}.js
done;