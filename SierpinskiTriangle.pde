int len=700;

public void setup()
{
size(700,700);
background(0);
}
public void draw()
{
fill(255);
sierpinski(0,height,len);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
triangle(x,y,x+len,y,x+len/2,y-len);
}
