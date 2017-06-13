#!/bin/bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/cuda:/usr/lib/nvidia

if [[ -z "$WORKER" || -z "$EMAIL" || -z "EWAL" ]]; then
    echo "You must at least set WORKER, EMAIL, and EWAL env vars."
    exit 1
fi

echo "POOL: ${EPOOL}, WALLET: ${EWAL}/${WORKER}/${EMAIL}, PSW: ${EPSW}, WORKER: ${WORKER}, ESM: ${ESM}, ALLPOOLS: 0" > /claymore/epools.txt
echo "POOL: ${DPOOL}, WALLET: ${DWAL}/${WORKER}/${EMAIL}, PSW: ${DPSW}, WORKER: ${WORKER}, ESM: 0, ALLPOOLS: 0" > /claymore/dpools.txt

/claymore/ethdcrminer64 \
    -epool ${EPOOL} \
    -ewal ${EWAL}/${WORKER}/${EMAIL} \
    -epsw ${EPSW} \
    -ethi ${ETHI} \
    -esm ${ESM} \
    -dcoin ${DCOIN} \
    -dpool ${DPOOL} \
    -dwal ${DWAL}/${WORKER}/${EMAIL} \
    -dpsw ${DPWD} \
    -dcri ${DCRI} \
    -di ${DI} \
    -gser ${GSER} \
    -dbg 0

