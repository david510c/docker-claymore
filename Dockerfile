FROM nvidia/cuda:8.0-devel-ubuntu16.04

# Claymore suggested flags
ENV GPU_FORCE_64BIT_PTR=0
ENV GPU_MAX_HEAP_SIZE=100
ENV GPU_USE_SYNC_OBJECTS=1
ENV GPU_MAX_ALLOC_PERCENT=100
ENV GPU_SINGLE_ALLOC_PERCENT=100

# Install various libs
RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends apt-transport-https wget ca-certificates ocl-icd-opencl-dev curl libcurl3 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Get claymore
RUN wget https://github.com/nanopool/Claymore-Dual-Miner/releases/download/v9.5/Claymore.s.Dual.Ethereum.Decred_Siacoin_Lbry_Pascal.AMD.NVIDIA.GPU.Miner.v9.5.-.LINUX.tar.gz -O claymore.tar.gz
RUN mkdir /claymore
RUN tar -xvzf claymore.tar.gz --directory /claymore
RUN rm -f /claymore.tar.gz

# Start claymore
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
