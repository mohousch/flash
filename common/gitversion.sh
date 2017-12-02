#!/bin/bash

CURDIR=$1
DATETIME=_`date +%d.%m.%Y-%H.%M`

if [ -d $CURDIR/../../source/libstb-hal-ddt ]; then
	HAL_REV=_HAL-rev`cd $CURDIR/../../source/libstb-hal-ddt git log | grep "^commit" | wc -l`-ddt
elif [ -d $CURDIR/../../source/libstb-hal-max ]; then
	HAL_REV=_HAL-rev`cd $CURDIR/../../source/libstb-hal-max && git log | grep "^commit" | wc -l`-max
elif [ -d $CURDIR/../../source/libstb-hal-tangos ]; then
	HAL_REV=_HAL-rev`cd $CURDIR/../../source/libstb-hal-tangos && git log | grep "^commit" | wc -l`-tangos
else
	HAL_REV=_HAL-revXXX
fi

if [ -d $CURDIR/../../source/neutrino-mp-ddt ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../source/neutrino-mp-ddt git log | grep "^commit" | wc -l`-ddt
elif [ -d $CURDIR/../../source/neutrino-mp-max ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../source/neutrino-mp-max && git log | grep "^commit" | wc -l`-max
elif [ -d $CURDIR/../../source/neutrino-mp-tangos ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../source/neutrino-mp-tangos && git log | grep "^commit" | wc -l`-tangos
else
	NMP_REV=_NMP-revXXX
fi

gitversion="_BASE-rev`(cd $CURDIR/../../ && git log | grep "^commit" | wc -l)`$HAL_REV$NMP_REV$DATETIME"

echo "GITVERSION   = $gitversion"
export gitversion
