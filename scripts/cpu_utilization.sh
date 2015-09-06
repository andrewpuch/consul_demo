#!/bin/bash

CPU_UTILIZATION=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
CPU_UTILIZATION=${CPU_UTILIZATION%.*}

echo "CPU: "$CPU_UTILIZATION"%"

if (( $CPU_UTILIZATION > 75 ));
then
    exit 2
fi

if (( $CPU_UTILIZATION > 50 ));
then
    exit 1
fi

exit 0