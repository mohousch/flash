#!/bin/bash

CURDIR=$1

if [ -d $CURDIR/../../source/libstb-hal-cst-next ]; then
	HAL_REV=_HAL-rev`cd $CURDIR/../../source/libstb-hal-cst-next && git log | grep "^commit" | wc -l`-github
elif [ -d $CURDIR/../../source/libstb-hal-cst-next-max ]; then
	HAL_REV=_HAL-rev`cd $CURDIR/../../source/libstb-hal-cst-next-max && git log | grep "^commit" | wc -l`-max
else
	HAL_REV=_HAL-rev`cd $CURDIR/../../source/libstb-hal-cst-next-tangos && git log | grep "^commit" | wc -l`-tangos
fi

if [ -d $CURDIR/../../source/neutrino-mp-cst-next ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../source/neutrino-mp-cst-next && git log | grep "^commit" | wc -l`-github
elif [ -d $CURDIR/../../source/neutrino-mp-cst-next-ni ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../source/neutrino-mp-cst-next-ni && git log | grep "^commit" | wc -l`-github
elif [ -d $CURDIR/../../source/neutrino-mp-cst-next-max ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../source/neutrino-mp-cst-next-max && git log | grep "^commit" | wc -l`-max
elif [ -d $CURDIR/../../source/neutrino-mp-tangos ]; then
	NMP_REV=_NMP-rev`cd $CURDIR/../../source/neutrino-mp-tangos && git log | grep "^commit" | wc -l`-tangos
fi

gitversion="_CDK-rev`(cd $CURDIR/../../ && git log | grep "^commit" | wc -l)`$HAL_REV$NMP_REV"

echo "GITVERSION   = $gitversion"
export gitversion
