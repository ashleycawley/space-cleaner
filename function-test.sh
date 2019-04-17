#!/bin/bash

FreeSpaceBeforeClean=`df -k -h . | awk ' { print $4 } ' | sed -e 's/Avail//g' | tail -n 1`

function SanitiseMeasurement {
    sed s/M//g | sed s/G//g | sed s/T//g
}

echo -e "
Free Disk space prior to cleaning: $FreeSpaceBeforeClean"



FreeSpaceAfterClean=`df -k -h . | awk ' { print $4 } ' | sed -e 's/Avail//g' | tail -n 1`

# Strips the M (for MB), G (for GB) and T (for Terabyte) out of the results, just leaving a integer
BEFORE=`echo $FreeSpaceBeforeClean | SanitiseMeasurement`
AFTER=`echo $FreeSpaceAfterClean | SanitiseMeasurement`

FREED=`echo "$BEFORE-$AFTER" | bc`

echo "Space Released: $FREED"

exit 0