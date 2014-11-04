#!/bin/bash
echo "Starting pd..."
pd -alsamidi -midiindev 1 -midioutdev 1 -nogui /home/pi/midifilter.pd &

# renice pd for much higher priority
#renice -10 $(pidof pd)

# wait for pd to initialize
KA=$(aconnect -i -o | grep "Pure Data")
while [ "$KA" = "" ]
do
 sleep 1
 echo "rc_starts_pd: pd alsamidi not ready"
 KA=$(aconnect -i -o | grep "Pure Data")
done
echo "rc_starts_pd: pd alsmidi is ready"

# disconnect default connections
aconnect -x
# connect midi input
aconnect 'MIDIMATE II':0 'Pure Data':0
# connect midi output
aconnect 'Pure Data':1 'MIDIMATE II':1


