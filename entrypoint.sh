#!/bin/bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/cuda:/usr/lib/nvidia

echo "POOL: eth-eu2.nanopool.org:9999, WALLET: ${EWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" > /claymore/epools.txt
echo "POOL: eth-asia1.nanopool.org:9999, WALLET: ${EWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" >> /claymore/epools.txt
echo "POOL: eth-us-east1.nanopool.org:9999, WALLET: ${EWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" >> /claymore/epools.txt
echo "POOL: eth-us-west1.nanopool.org:9999, WALLET: ${EWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" >> /claymore/epools.txt

echo "POOL: sia-eu2.nanopool.org:7777, WALLET: ${DWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" > /claymore/dpools.txt
echo "POOL: sia-asia1.nanopool.org:7777, WALLET: ${DWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" >> /claymore/dpools.txt
echo "POOL: sia-us-east1.nanopool.org:7777, WALLET: ${DWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" >> /claymore/dpools.txt
echo "POOL: sia-us-west1.nanopool.org:7777, WALLET: ${DWAL}/${WORKER}/${EMAIL}, PSW: x, WORKER: , ESM: 0, ALLPOOLS: 0" >> /claymore/dpools.txt

/claymore/ethdcrminer64 \
    -epool ${EPOOL} \
    -ewal ${EWAL}/${WORKER}/${EMAIL} \
    -epsw ${EPSW} \
    -dcoin ${DCOIN} \
    -dpool ${DPOOL} \
    -dwal ${DWAL}/${WORKER}/${EMAIL} \
    -dpsw ${DPWD} \
    -ethi ${ETHI} \
    -gser ${GSER} \
    -di ${DI} \
    -dbg 0

