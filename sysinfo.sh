#!/bin/bash

freespace=$(df -h / | grep -E "\/$" | awk '{print $4}')
greentext= "\033[32m"
bold="\033[1m"
normal="\033[0m"
logdate=$(date +"%Y%m%d")
logfile="$logdate"_report.log

echo -e $bold"Quick system report for "$greentext"$HOSTNAME"$normal
printf "\tSystem type:\t%s\n" $MACTYPE
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Space:\t%s\n" $freespace
printf "\tGenerated on:\t%s\n" $(date +"%m/%d/%y") # US date format
echo -e $greentext"A summary of this info has been saved to $logfile"$normal

cat <<- EOF > $logfile
	This report was automatically generated. 
	It contains a bried summary for your system information.
EOF
