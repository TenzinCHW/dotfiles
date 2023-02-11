## Setup on Ubuntu 20.04
So I like to set up my computer to use AMD GPUs as well as NVIDIA GPUs, but they are simply just not as straightforward in terms of driver support.

So first get the install drivers from [here](https://www.amd.com/en/support/linux-drivers). Alternatively I might have the current one in this directory. Install with

```sudo apt install <deb-file-path>```

Then to install the drivers for OpenCL support, run

```amdgpu-install --no-dkms```

I found that my ability to use the GPU for graphics like with `DRI_PRIME=1` is gone after installing the driver for OpenCL. So to uninstall it, run

```amdgpu-uninstall```

and reboot.
