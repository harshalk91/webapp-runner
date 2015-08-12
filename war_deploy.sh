#!/bin/bash
if [ -f /home/travis/mavin_logs.log ]
then
  war_location=`cat /home/travis/mavin_logs.log | grep "[INFO] Installing" | awk '{print $3}'`
  echo "war location is $war_location"
else
  echo "Maven log file not found"
fi
