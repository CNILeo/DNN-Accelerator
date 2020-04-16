#include <stdio.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define BRAM_CTRL_0 0x40000000
#define BRAM_CTRL_1 0x80000000
#define DATA_LEN    10

int main(int argc, char **argv)
{
    unsigned int *NN_REG;
	
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        printf("can not open /dev/mem \n");
        return (-1);
    }   
    printf("/dev/mem is open \n");

    NN_REG = mmap(NULL, DATA_LEN * 4, PROT_READ | PROT_WRITE, MAP_SHARED, fd, BRAM_CTRL_0);
	
    if (NN_REG == 0) { 
        printf("NULL Pointer\n");
    }   
    else {
        printf("mmap Success\n");
    }   

    unsigned long addr;
    unsigned int content;
    int i = 0;

    printf("Writing NN_REG\n");
    for (i = 0; i < DATA_LEN; i++) {
        addr = (unsigned long)(NN_REG + i); 
        content = i + 2;
        NN_REG[i] = content;
        printf("%2dth Data, Address: 0x%lx Data Write: 0x%x\t\t\n", i, addr, content);

    }   

    printf("Reading NN_REG\n");
    for (i = 0; i< DATA_LEN; i++) {
        addr = (unsigned long)(NN_REG + i); 
        content = NN_REG[i];
        printf("%2dth Data, Address: 0x%lx Data Read: 0x%x\t\t\n", i, addr, content);
    }   

    close(fd);
    munmap(NN_REG, DATA_LEN);

    return 0;
}