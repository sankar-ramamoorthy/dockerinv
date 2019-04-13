#!/bin/bash
docker ps -f name=dinv1
#docker exec -it dinv1 /bin/bash -c "$SCRDIR/run1.sh"
docker exec -it dinv1 /bin/bash -c "/home/scrdir/run1.sh"
echo "==End=="
