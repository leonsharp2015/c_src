//
//  main.m
//  CLession3
//
//  Created by lanou3g on 15/11/13.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "test.h"

void fun_1()
{
    /* //ok
     char b2[]="hello";
     printf("%s\n",b2);
     char *p;
     char b[]="hello";
     p=b;
     printf("%s\n",p);
     */
    /* //ok
     char *p2="123abc";//指针变量指向字符串常量的第一个字符。c语言只有字符变量，没有字符串变量
     printf("%s\n",p2);
     printf("%s\n",strchr(p2, '3'));
     */
    /* ?
     char *p1=say_hello1();
     printf("%s\n",p1);
     */
    //int k=echo_int();
    //printf("%d\n",k);
    //char *a=say_hello();
    //say_hello1();
    
}
void foo_3(int *p1,int *p2)
{
    int temp=*p1;
    *p1=*p2;
    *p2=temp;
}
void fun_3()
{
    int a=89;
    int b=97;
    int *pointer_1=&a;
    int *pointer_2=&b;
    foo_3(pointer_1, pointer_2);
    printf("%d,%d",a,b);
}

void fun_4()
{
    int a[3];
    for (int i=0; i<3; i++) {
        scanf("%d",a+i);
    }
    for (int i=0; i<3; i++) {
        printf("结果%d",*(a+i));
    }
}

void foo_5(int *p,int n)
{
    for (int i=0; i<n; i++)
    {
        for (int j=i+1; j<n; j++) {
            if(*(p+j)>*(p+i))
            {
                int temp=*(p+j);
                *(p+j)=*(p+i);
                *(p+i)=temp;
            }
        }
    }
}
void fun_5()
{
    int a[4]={12,45,3,7};
    foo_5(a, 4);
    
    for (int i=0; i<4; i++) {
        printf("排序结果%d\n",*(a+i));
    }
}


void fun_6()
{
    /*二维数组
     int a[][4]={{50,51,52,55},{70,71,72,73},{77,99,88,67}};
     int *p=a+2;//p指向77,99,88,67的一维数组的首地址
     for (int i=0; i<4; i++) {
     printf("%d\n",*(p+i));//轮流打出77,99,88,67
     }
     */
    /*
     char b[][4]={"1234","abcd","wxyz"};
     char *p=b[1];
     for (int i=0; i<4; i++) {
     printf("%c\n",p[i]);
     }
     */
    
    //s指针数组
    char *s[3] = { "iOS", "Android", "Win8"};//指针数组,处理字符串使用
    //1.
    char *t1=s[2];
    printf("指针数组s[2]:%s\n",t1);
    //2.
    char **t2=s+2;
    printf("指针数组s+2:%s\n",*t2);
    
    /////////////////////////////////////////////////////
    
    int i[][2]={{56,77},{63,12},{49,31}};
    //1.p指针指向一维数组
    int (*p)[2];
    p=i;
    int k1=*p[0];//56
    int m1=**p;//56
    
    int k2=*(p+1)[0];//63
    int m2=*(*(p+1));//63
    int m2_2=p[1][0];//63 编译结果为*(*(p+1)+0)
    
    int k3=*(*(p+1)+1);//12
    int m3=*(p[1]+1);//12
    
    
    
    //2.指针数组
    int *p3[2];
    p3[0]=*(i+1);
    int k4=*(p3[0]+1);//12
    
    
    /*
     int *p2[2];
     p2[0]=&i[0][1];
     p2[1]=&i[0][2];
     int mm=*p2[0];
     */
    
    //3.指针数组主要用于字符串操作
    char *str[10]={"china","is","1234","visual"};
    
    printf("%s\n",str[0]);//str[0]是china字符串的地址
    
    printf("finish");
    
}


int main(int argc, const char * argv[])
{
    //char b[]="1234567";
    //int k0=strlen(b);
    //printf("%d\n",k0);
    //maopao_order();
    /*
     int i[]={12,58,555,19};
     int k[][3]={{15,78,55},{74,694,1},{88,5,98}};
     char cc[]={"1122abc"};
     char strings[][10] = {"iPhone" , "Android" , "win8" ,"123456789"};
     char t=strings[2][3];
     char *tt=strings[1];//字符串"Android"的地址
     printf("%s",tt);
     */
    /* ok
     int a=12;
     int *p=&a;
     char *s[3] = { "iOS", "Android", "Win8"};//指针数组
     char *t1=s[2];
     char **t2=s+2;
     
     
     int k1=strcmp(s[1], s[2]);
     k1=strcmp(s[2], s[1]);
     printf("%s\n",t1);
     printf("%s\n",*t2);
     */
    
    main_paixu();//两种排序方法及运行时间
    return 0;
}
