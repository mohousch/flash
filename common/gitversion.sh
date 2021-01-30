#!/bin/bash

CURDIR=$1
DATETIME=_`date +%d.%m.%Y-%H.%M`
BOXTYPE=$2

if [ -d $CURDIR/../../tufsbox/$BOXTYPE/build_source/neutrinohd2 ]; then
	NMP_REV=_NHD2-rev`cd $CURDIR/../../tufsbox/$BOXTYPE/build_source/neutrinohd2 && git log | grep "^commit" | wc -l`-ddt
else
	NMP_REV=_NHD2-revXXX
fi

gitversion="_BASE-rev`(cd $CURDIR/../../ && git log | grep "^commit" | wc -l)`$NMP_REV$DATETIME"

echo "GITVERSION   = $gitversion"
export gitversion
