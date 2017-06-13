# Claymore Eth Miner for NVIDIA GPUs

This is a very crude container based on nvidia's cuda containers
and the Claymore Eth dual miner.  
It is mainly meant to be used for dual mining eth/sia on nanopool.  
If you need to mine something different or somewhere else you might
need to modify some more env vars or even the entrypoint script.

## Running

You need to specify a number or required env vars.

* `EMAIL` Your email.
* `WORKER` Your worker name.
* `EWAL` Ethereum wallet address.
* `DWAL` Sia wallet address.

Check out the `Dockerfile` for the rest of the optional env vars supported.  
Claymore supports quite a few more that are not being used here.

### Example

```
docker run \
  -e "EMAIL=george@noodles.gr" \
  -e "WORKER=docker1" \
  -e "EWAL=0x54299f872c36f7bc306be3425abc41a5ab082752" \
  -e "DWAL=d2ce0ab59206119c0ba30b1592c8c43a6c3f949cd1eafc41cba7791d5f74d801a4e5bac8f463" \
  geoah/docker-claymore
```