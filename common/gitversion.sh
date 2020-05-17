#!/bin/bash

CURDIR=$1
DATETIME=_`date +%d.%m.%Y-%H.%M`

if [ -d $CURDIR/../../build_source/libstb-hal-ddt ]; then
	HAL_REV=_HAL-rev`cd $CURDIR/../../build_source/libstb-hal-ddt && git log | grep "^commit" | wc -l`-ddt
elif [ -d $CURDIR/../../build_source/libstb-hal-tangos ]; then
	HAL_REV=_HAL-rev`cd $CURDIR/../../build_source/libstb-hal-tangos && git log | grep "^commit" | wc -l`-tangos
else
	HAL_REV=_HAL-revXXX
fi

if [ -d $CURDIR/../../build_source/neutrino-ddt ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../build_source/neutrino-ddt && git log | grep "^commit" | wc -l`-ddt
elif [ -d $CURDIR/../../build_source/neutrino-ddt-youtube ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../build_source/neutrino-ddt-youtube && git log | grep "^commit" | wc -l`-ddt-yt
elif [ -d $CURDIR/../../build_source/neutrino-tangos ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../build_source/neutrino-tangos && git log | grep "^commit" | wc -l`-tangos
else
	NMP_REV=_NMP-revXXX
fi

gitversion="_BASE-rev`(cd $CURDIR/../../ && git log | grep "^commit" | wc -l)`$HAL_REV$NMP_REV$DATETIME"

echo "GITVERSION   = $gitversion"
export gitversion
