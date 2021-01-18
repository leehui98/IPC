#include<sys/stat.h>
#include<unistd.h>
#include<fcntl.h>
#include<error.h>
#include<iostream>
using namespace std;
//原理：内核管理的有名环形队列
//特点:单向通信，可以在无亲缘关系的进程间通信
//用在shell命令中，无需创建中间文件；用在客服进程-服务器进程中
//在读的时候如果没有写，会阻塞
int main(){
    int fd;
    char buff[100];
    int len;
    if(mkfifo("fifo",0666)<0 && errno!=EEXIST){
        cout<<"error in create fifo"<<endl;
        exit(1);
    }
    if(fd=open("fifo",O_RDONLY)<0){
        cout<<"error in open fifo"<<endl;
        exit(1);
    }
    if(len=read(fd,buff,sizeof(buff))>0)
        cout<<buff<<endl;;
    close(fd);
    return 0;
}