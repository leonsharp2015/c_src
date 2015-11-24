//
//  main.m
//  CLession3
//
//  Created by lanou3g on 15/11/13.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>
#import "test.h"

void fun_1()
{
    //Created by lanou3g on 15/11/20.讲义
    //1.定义二维数组,存储3个字符串
    //char str[3][50]={"iOS","iPad","iMac"};
    
    //str本质上是二维数组
    //str存储的内容为字符数组 (字符串)
    
    //str[0] 访问第一个字符数组,相当于第一个字符数组的地址 (首地址)
    //str[1] 访问第二个字符数组 ,相当于第二个字符数组的地址
    //str[2] 访问第三个字符数组, 相当于第三个字符数组的地址
    //printf("%s\n",str[1]);//iPad
    //printf("%s\n",*(str+1));//iPad
    
    
     //2.指针数组,此时str本质上是一维数组，str中存储的是字符指针
     //char *str[3]={"iOS","iPad","iMac"};
     //str[0]是第一个字符指针 指向常量区字符串"ios"
     //str[1]是第二个字符指针 指向常量区字符串"ipad"
     //printf("%s\n",str[0]);//iOS
     //str[0]="iPhone";//修改指向，可以
    
    
    
    /* //ok
     char b2[]="hello";
     printf("%s\n",b2);
     char *p;
     char b[]="hello";
     p=b;
     printf("%s\n",p);
     */
    
    /* //ok
     char *p2="123abc";//指针变量指向内存中字符串常量的第一个字符。c语言只有字符变量，没有字符串变量
     printf("%s\n",p2);
     printf("%s\n",strchr(p2, '3'));
     */
    
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
    
}


void fun_2()
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
void point_int_array_foo()//一维整型数组
{
    
    /*1.
     int num=4;
     int *intArray=(int *) malloc(num * sizeof(int));
     *intArray=5;
     *(intArray+1)=12;
     *(intArray+2)=33;
     *(intArray+3)=108;
     */
    //2.
    int intArray[4]={12,45,88,9};
    for (int i=0; i<3; i++) {
        printf("%d\n",*(intArray+i));
    }
}
void point_int_array2_foo()//二维整型数组
{
    
    /* 1.
     int (*p1)[2]=(int(*)[2])malloc(sizeof(int)*20);//p指向一维数组的指针
     *(*p1)=7;
     *(*p1+1)=8;
     p1=p1+1;
     *(*p1)=1;
     *(*p1+1)=2;
     //打印
     p1=p1-1;
     printf("%d\n",*(*(p1+1)+1));
   */
    
    /* 2.
     int num=5;
     int **p=(int **)malloc(sizeof(int)*num);
     for(int i=0;i<2;i++)
     {
         *(p+i)=(int *)malloc(sizeof(int)*num);//或者p[i]
     }
     
     *(*p)=7;
     *(*p+1)=8;
     p=p+1;
     *(*p)=1;
     *(*p+1)=2;
     //打印
     p=p-1;
     printf("%d\n",*(*(p+1)+1));
     */
    
}
void point_char_array2_foo()//二维字符串数组
{
    /* //1.
    char (*p1)[2]=(char(*)[2])malloc(sizeof(char)*20);//p指向一维数组的指针
    strcpy(p1,"hello");
    printf("%s\n",p1);
    p1=p1+1;
    strcpy(p1,"world");
    printf("%s\n",p1);
     */
    //2.
    int num=5;
    char **p=(char **)malloc(sizeof(char)*num);
    for(int i=0;i<2;i++)
    {
        *(p+i)=(char *)malloc(sizeof(char)*num);//或者p[i]
        char *temp=malloc(sizeof(char)*20);
        if(i%2==0)
        {
            strcpy(temp,"hello");
        }
        else
        {
            strcpy(temp,"world");
        }
         strcpy(*(p+i),temp);
    }
    printf("%s,%s\n",*p,*(p+1));
}

void printCharArray(char **p,int n)//传入二维字符串数组的首地址,打印所有字符串
{
    for (int i=0; i<n; i++)
    {
        printf("%s\n",*(p+i));
    }
}
void printOneCharArray(char *p)//只打印一个字符串
{
    printf("%s\n",p);
    
}
void point_foo()
{
    //point_int_array_foo()
    //point_char_array2_foo();
    
    //总结一般操作字符串数据的方法
    //一、使用指针数组
    //1.定义
    char *charArray[3]={"123","abc","iOS"};
    //2.借助**charArray输出所有字符串
    printCharArray(charArray, 3);
    //或者charArray[i],某一个字符串地址
    for (int i=0; i<3; i++)
    {
        printOneCharArray(charArray[i]);//charArray[i]可写为*(charArray+i)
    }
    
    //二、使用二维字符串数组
    //1.定义
    char str[3][50]={"java","C","Object-c"};
    //2.charArray[i]指向某一个字符串地址
    for (int i=0; i<3; i++)
    {
        printOneCharArray(str[i]);//str[i]可写为*(str+i)
    }
    
    
}
void malloc_size_foo()//分配内存空间
{
    
    //字符数组
    char *cp=(char *)malloc(2*sizeof(char));
    *cp='a';
    *(cp+1)='b';
    printf("%s\n",cp);
    
    //字符数组
    char *str=(char *)malloc(sizeof(char)*8);
    strcpy(str, "iOS");
    printf("%s\n",str);
    
    //字符串数组
    char **point_1=(char **)malloc(sizeof(char)*3);
    *(point_1) = (char *)malloc(sizeof(char)*40);
    *(point_1+1) = (char *)malloc(sizeof(char)*40);
    *(point_1+2) = (char *)malloc(sizeof(char)*40);
    strcpy(*point_1, "apple");
    strcpy(*(point_1+1), "bear");
    strcpy(*(point_1+2), "abc");
    printf("%s\n",*(point_1+2));
    

}

int main(int argc, const char * argv[])
{
    //main_paixu();//两种排序方法及运行时间
    
    
    
    point_foo();
    return 0;
}
