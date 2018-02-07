#!/bin/bash -e
while true
do
{{ UTR_REMOTE_PATH }}/{{ UTR_BINARIES[ansible_system]['target'] }} +set fs_game q3ut4 +set fs_basepath {{ UTR_REMOTE_PATH }} +set fs_homepath {{ UTR_REMOTE_PATH }} +set dedicated 2 +set net_port 27960 +set com_hunkmegs 128 +exec server.cfg > {{ UTR_REMOTE_PATH }}/server.out 2>&1
echo "server crashed on `date`" > {{ UTR_REMOTE_PATH }}/last_crash.txt
done
