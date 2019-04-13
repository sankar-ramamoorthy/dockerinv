#!/bin/bash
#docker run -dt --name dinv1 -v $(pwd)/../src:/home/indir $(pwd)/../outdir:/home/outdir $(pwd)/../bkupdir:/home/bkupdir dinv1
docker run -dt --name dinv1 -v $(pwd)/../indir:/home/indir -v $(pwd)/../outdir:/home/outdir -v $(pwd)/../bkupdir:/home/bkupdir dinv1 
#docker run -dt --name dinv1 -v $(pwd)/../src:/home/indir dinv1
docker ps -f name=dinv1
