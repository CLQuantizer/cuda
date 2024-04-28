#include <iostream>

// A CUDA kernel (function executed on the GPU)
__global__ void say_hello() {
    printf("Hello, World from the GPU!\n");
}

int main() {
    // Call the kernel with one block containing one thread
    say_hello<<<1,1>>>(); 

    // Ensure all GPU tasks complete before exiting
    cudaDeviceSynchronize(); 
    return 0; 
}