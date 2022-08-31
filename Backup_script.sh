#!/bin/bash

DATE=$(date +%Y-%m-%d-%H-%M)
DATADIR=/root/.near/data
BACKUPDIR=/root/reserve/near_${DATE}

rm -rf /root/reserve/*

mkdir $BACKUPDIR

sudo systemctl stop neard

wait 5

echo "NEAR node was stopped"

if [ -d "$BACKUPDIR" ]; then
            echo "Backup started"

                cp -rf $DATADIR ${BACKUPDIR}/

                    tar -cvf /root/reserve/near_${DATE}.tar $BACKUPDIR
                    rm -rf /root/reserve/near_${DATE}

                        curl -fsS -m 10 --retry 5 -o /dev/null https://hc-ping.com/1541d4e2-61b5-4c2f-9d33-d422f6be8e6a

                            echo "Backup completed"
                    else
                                echo $BACKUPDIR is not created. Check your permissions.
                                    exit 0
fi

sudo systemctl start neard

echo "NEAR node was started"

