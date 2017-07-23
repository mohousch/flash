#!/bin/bash

CURDIR=$1

TMPROOTDIR=$2
TMPSTORAGEDIR=$3
TMPKERNELDIR=$4

# Do your customizations here
rm -f $TMPROOTDIR/lib/modules/cifs.ko
rm -f $TMPROOTDIR/lib/modules/cpu_frequ.ko
