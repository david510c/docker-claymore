FROM nvidia/cuda:8.0-devel-ubuntu16.04

ENV GPU_FORCE_64BIT_PTR=0
ENV GPU_MAX_HEAP_SIZE=100
ENV GPU_USE_SYNC_OBJECTS=1
ENV GPU_MAX_ALLOC_PERCENT=100
ENV GPU_SINGLE_ALLOC_PERCENT=100

ENV DI=detect
ENV GSER=1

ENV WORKER docker1
ENV EMAIL george@noodles.gr

ENV EPOOL=eth-eu1.nanopool.org:9999
ENV EWAL=0x54299f872c36f7bc306be3425abc41a5ab082752
ENV EPSW=x
ENV ETHI=8

ENV DCOIN=sia
ENV DPOOL=sia-eu1.nanopool.org:7777
ENV DWAL=d2ce0ab59206119c0ba30b1592c8c43a6c3f949cd1eafc41cba7791d5f74d801a4e5bac8f463/docker1/george@noodles.gr
ENV DPSW=x
ENV DCRI=30

RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends apt-transport-https wget ca-certificates ocl-icd-opencl-dev curl libcurl3 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY claymore-v9.5.tar.gz /claymore.tar.gz

RUN mkdir /claymore
RUN tar -xvzf claymore.tar.gz --directory /claymore
RUN rm -f /claymore.tar.gz

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh