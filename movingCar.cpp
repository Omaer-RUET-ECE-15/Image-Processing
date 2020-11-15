#include <graphics.h>
int main()
{
/* initialize graphics window at 400 x 300 */
initwindow(1000, 800);
/*pieslice(X_CoOrdinateOfCenter, Y_CoOrdinateOfCenter,
           StartingAngleOfSlice, EndingAngleOfSlice, Radius)

arc(X_CoOrdinateOfCenter, Y_CoOrdinateOfCenter,
           StartingAngleOfSlice, EndingAngleOfSlice, Radius);
/* clean up */
int i,j;
i=0;
j=700;
while(j){
    line(50+i,200,700+i,200);
    line(100+i,200,200+i,100);
    line(200+i,100,500+i,100);
    line(500+i,100,600+i,200);

    line(50+i,200,50+i,270);
    line(50+i,270,100+i,270);
    line(200+i,270,550+i,270);
    line(650+i,270,700+i,270);
    line(700+i,200,700+i,270);

    arc(150+i,270,0,180,50);
    arc(600+i,270,0,180,50);

    circle(150+i,270,40);
    circle(600+i,270,40);

    pieslice(150+i,270,0+i,90+i,40);
    pieslice(150+i,270,180+i,270+i,40);
    pieslice(600+i,270,0+i,90+i,40);
    pieslice(600+i,270,180+i,270+i,40);

    i++;
    j--;
    delay(10);
    cleardevice();
    if (!j){
        i=0;
        j=700;
    }
}
getch();
closegraph();
return 0;
}
