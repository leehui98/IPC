#include<iostream>
#include<unistd.h>
using namespace std;
//原理：内核管理的无名环形队列
//特点：单向通信，只能在有亲缘关系的进程间通信
//常应用在父子进程中
int main(){
    int pid;
    int fd[2];
    if(pipe(fd)<0){
        cout<<"error in pipe()"<<endl;
        exit(1);
    }
    if((pid=fork())<0){
        cout<<"error in fork"<<endl;
        exit(1);
    }else if(pid>0){//父进程
        close(fd[0]);
        write(fd[1],"hello\n",sizeof("hello\n"));
    }else if(pid==0){//子进程
        close(fd[1]);
        char buff[100]{};
        read(fd[0],buff,sizeof(buff));
        cout<<buff;
    }
    return 0;
}