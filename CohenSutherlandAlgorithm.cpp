#include <graphics.h>
#include<stdio.h>
#include <iostream>
int main()
{
/* initialize graphics window at 400 x 300 */
initwindow(800, 800);
rectangle(100,100,600,600);
int XMin = 100, XMax = 600, YMin = 100, YMax = 600;
int TestX1, TestY1, TestX2, TestY2,X1,X2,Y1,Y2;
printf("Enter the co-ordinates:\n");
scanf("%d%d%d%d", &TestX1, &TestY1, &TestX2, &TestY2);
printf("Co-ordinates of the 1st point:(%d %d)\n",TestX1, TestY1);
printf("Co-ordinates of the 2nd point:(%d %d)",TestX2, TestY2);
int TB, RL;
//Region determination: TBRL
// 1st Point
//Top Bottom:RB
if(TestY1<YMin){
    TB = 10;
    Y1 = YMin;
    X1 = (YMin-TestY1)*(TestX2-TestX1)/(TestY2-TestY1)+TestX1;
}
else if(TestY1>YMax){
    TB = 1;
    Y1 = YMax;
    X1 = (YMax-TestY1)*(TestX2-TestX1)/(TestY2-TestY1)+TestX1;
}
else
    TB = 0;
//Right Left: RL
if(TestX1<XMin){
    RL = 01;
    X1 = XMin;
    Y1 = (XMin-TestX1)*(TestY2-TestY1)/(TestX2-TestX1)+TestY1;
}
else if(TestX1>XMax){
    RL = 10;
    X1 = XMax;
    Y1 = (XMax-TestX1)*(TestY2-TestY1)/(TestX2-TestX1)+TestY1;
}
else
    RL = 0;
int result;
result = TB*100+RL;
printf("\nRegion of 1st point:%d",result);
// 2nd Point
//Top Bottom:RB
if(TestY2<YMin){
    TB = 10;
    Y2 = YMin;
    X2 = (YMin-TestY1)*(TestX2-TestX1)/(TestY2-TestY1)+TestX1;
}
else if(TestY2>YMax){
    TB = 1;
    Y2 = YMax;
    X2 = (YMax-TestY1)*(TestX2-TestX1)/(TestY2-TestY1)+TestX1;
}
else
    TB = 0;
//Right Left: RL
if(TestX2<XMin){
    RL = 01;
    X2 = XMin;
    Y2 = (XMin-TestX1)*(TestY2-TestY1)/(TestX2-TestX1)+TestY1;
}
else if(TestX2>XMax){
    RL = 10;
    X2 = XMax;
    Y2 = (XMax-TestX1)*(TestY2-TestY1)/(TestX2-TestX1)+TestY1;
}
else
    RL = 0;
result = TB*100+RL;
printf("\nRegion of 1st point:%d",result);
line(X1, Y1, X2, Y2);
initwindow(800, 800);
rectangle(100,100,600,600);
line(TestX1,TestY1,TestY1,TestY2);
getch();
closegraph();
return 0;
}
