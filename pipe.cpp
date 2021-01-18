#include<iostream>
#include<unistd.h>
using namespace std;
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