#include <stdlib.h>
#include <stdio.h>
#include "zero_server.h"


int main(int argc,char **argv){
        printf("wtf\n");
    zero_server *server = zero_server_create(1989);
    if(zero_server_start(server)) {
        printf("start server\n");
    } else {
        printf("error");
    }

    for(;;){
        zero_sleep(2000);
    }

    return 1;
}
