## Hey, Cuda!
A primitive utility for Linux-based OS that shows information about your CUDA device

### Overview
*I created this program for my own purposes and to learn more about CUDA technology. So it probably won't be much useful for you but if you find this somehow useful after all I would be pleased.*

At the moment the utulity shows:
 - device's name
 - number of multiprocessors
 - registers per multiprocessor
 - clock rate
 - total memory
 - memory BUS width
 - CUDA compute mode
 - max threads per block
 - PCI device ID
 
### How to use
In order to use _Hey, Cuda!_ you should download and build it of your own. Note that you have nVidia CUDA tookit already installed on your machine. Now clone the repo by command:
```sh
git clone https://github.com/rerreby/heyCuda.git
```

Then build and with command
```sh
nvcc -arch sm_20 -o heyCuda heyCuda.cu
```
 
That's all. Cheers!
