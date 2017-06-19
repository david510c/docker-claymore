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
  -e "EMAIL=emaildavid@yahoo.com" \
  -e "WORKER=docker0" \
  -e "EWAL=0x348AA2e4F7E730E37781AB8584DDbbA3977930d8" \
  -e "DWAL=8479c3129ec4f674e22d47b275c0b641f8fe8de1f379a5ac43c80daf44dd94f45812ea8d6fb6" \
  david510c/docker-claymore
```
