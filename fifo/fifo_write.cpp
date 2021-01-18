#include<sys/stat.h>
#include<unistd.h>
#include<fcntl.h>
#include<iostream>
using namespace std;
//原理：内核管理的有名环形队列
//特点:单向通信，可以在无亲缘关系的进程间通信
//用在shell命令中，无需创建中间文件；用在客服进程-服务器进程中
int main(){
    int fd;
    if(fd=open("fifo",O_WRONLY)<0){
        cout<<"error in open fifo"<<endl;
        exit(1);
    }
    if(write(fd,"hello",sizeof("hello"))<0){
        cout<<"error in write fifo"<<endl;
        exit(1);
    }
    close(fd);
    return 0;
}
