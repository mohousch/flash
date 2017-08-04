#!/bin/bash

CURDIR=$1
TMPROOTDIR=$2
TMPKERNELDIR=$3
TMPSTORAGEDIR=$4


# Do your customizations here
rm -f $TMPROOTDIR/lib/modules/cifs.ko
rm -f $TMPROOTDIR/lib/modules/cpu_frequ.ko
