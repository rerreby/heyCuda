#include <stdio.h>

/*
void getComputeModeDescription(int computeMode, **char result)
{
    if (computeMode == 0)
        &result = "Thrreading mode available";
    else
        &result = "Unknown";
}
*/

int main(int argc, char **argv)
{
    printf("Hey, Cuda! utility, v0.1\n\n");

    int device;
    cudaDeviceProp prop;


    cudaGetDevice(&device);
    cudaGetDeviceProperties(&prop, device);

    printf("Device Name: %s\n", prop.name);
    printf("Processors: %d\n", prop.multiProcessorCount);
    printf("Clock Rate: %d (Mhz)\n", prop.clockRate / 1024);
    printf("Total Memory: %d Megabytes\n", (prop.totalGlobalMem / 1024) / 1024);
    printf("Memory Clock Rate: %d Mhz\n", (prop.memoryClockRate / 1024));
    printf("Memory BUS width: %d bits\n", prop.memoryBusWidth);
    printf("CUDA compute mode: %d\n", prop.computeMode);
    printf("Max Threads per Block: %d\n", prop.maxThreadsPerBlock);
    printf("Registers per Multiprocessor: %d\n", prop.regsPerMultiprocessor);
    printf("PCI Device ID: %d\n", prop.pciDeviceID);

    printf("\n");

    printf("Supports allocating managed memory: %s\n", (prop.managedMemory == 0) ? "No" : "Yes");
    printf("Device is %s\n", (prop.integrated == 0) ? "discrete" : "integrated");

    // release device
    cudaDeviceSynchronize();
    return 0;
}