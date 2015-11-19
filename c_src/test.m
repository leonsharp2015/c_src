//
//  test.c
//  C_Lession_exe
//
//  Created by lanou3g on 15/11/17.
//  Copyright © 2015年 lanou3g. All rights reserved.
//

#include "test.h"
#include "time.h"


void order_maopao_foo(int array[],int length)//冒泡排序
{
    //1.
    /*
     for (int i=0; i<length-1; i++)
     {
     for (int j=0; j<length-1-i; j++) {
     if(array[j]>array[j+1])
     {
     int temp=array[j+1];
     array[j+1]=array[j];
     array[j]=temp;
     }
     }
     }
     */
    //2.
    for (int i=0; i<length; i++)
    {
        for (int j=i+1; j<length; j++)
        {
            if(array[j]<array[i])
            {
                int temp=array[j];
                array[j]=array[i];
                array[i]=temp;
            }
        }
    }
    
}

void order_charu_foo(int a[],int length)//插入排序
{
    int i,j,key;
    for(i=1;i<length;i++)//控制需要插入的元素
    {
        key=a[i]; //key为要插入的元素
        for(j=i;j>0 && a[j-1]>key;j--)//查找要插入的位置,循环结束,则找到插入位置
        {
            a[j] = a[j-1]; //移动元素的位置.供要插入元素使用
        }
        a[j] = key; //插入需要插入的元素
        
    }
    
}

void calc_time_foo()
{
    int num=10000;
    int *array=(int *) malloc(num * sizeof(int));
    int *array2=(int *) malloc(num * sizeof(int));
    for (int i=0; i<num; i++)//赋值初始值,逆序
    {
        array[num-1-i]=i;
        array2[num-1-i]=i;
    }
    //这个函数返回从“开启这个程序进程”到“程序中调用clock()函数”时之间的CPU时钟计时单元（clock tick）数，
    //在MSDN中称之为挂钟时间（wal-clock）。其中clock_t是用来保存时间的数据类型
    //clock()函数计算出来的是硬件滴答的数目，不是毫秒
    //在TC2.0中硬件每18.2个滴答是一秒，在VC++6.0中硬件每1000个滴答是一秒
    //在标准C/C++中，最小的计时单位是一毫秒
    
    
    //1.冒泡排序
    clock_t start = clock();//clock_t是一个长整形数
    order_maopao_foo(array, num);
    clock_t finish= clock();
    
    double duration1 = (double)(finish - start) / CLOCKS_PER_SEC;
    printf( "\n 冒泡排序%d计算时间%f seconds\n",num, duration1 );
    
    //2.插入排序
    clock_t start2 = clock();
    order_maopao_foo (array2, num);
    clock_t finish2= clock();
    
    double duration2 = (double)(finish2 - start2) / CLOCKS_PER_SEC;
    printf( "\n 插入排序%d计算时间%f seconds\n", num,duration2 );
    
}
int main_paixu()//排序main
{
    //赋值初始值,逆序
    int num=20;
    int *array=(int *) malloc(num * sizeof(int));
    for (int i=0; i<num; i++)
    {
        array[num-1-i]=i;
    }
    
    for (int i=0; i<num; i++)//打印初始值
    {
        printf("%d,",array[i]);
    }
    
    
    //一、排序方法
    order_maopao_foo(array,num);//冒泡排序,第二个方式
    //order_charu_foo(array, num);//插入排序
    printf("\n=====排序结果======\n");
    for (int i=0; i<num; i++)//打印排序结果
    {
        printf("%d,",array[i]);
    }
    
    
    //二、计算2个排序方法的时间
    printf("\n=====计算2个排序方法的时间======\n");
    calc_time_foo();
    
    return 0;
}



