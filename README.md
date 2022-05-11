# Openwrt build instructions

### Firstly clone this repo with its submodule

```
git clone --recurse-submodules https://github.com/sakoram/openwrt-build.git
cd openwrt-build
```

### Then build docker image and run container
```
docker build -t openwrt .
docker run -v $(pwd)/openwrt:/home/openwrt -it openwrt /bin/bash
```

### You should be in the container now. Run the following scripts::
```
scripts/feeds update -a
scripts/feeds install -a
```

### If no error has occurred, you are ready to create the configuration and build the image
```
make menuconfig
make -j4
```

#### If you want to build for Raspberry pi 3:
set Target System to Broadcom BCM27xx
and Subtarget to BCM2710
