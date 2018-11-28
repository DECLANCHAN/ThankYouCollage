PImage waifu;
PImage commie;
PImage glasses;
int xPos=100;
int xDir=25;
int yPos=100;
int yDir=25;

void setup()
{
size(1000,1000);
smooth();
frameRate(25);
waifu=loadImage("waofu.jpg");
commie=loadImage("hammersickle2.png");
glasses=loadImage("glasses.png");
}

void draw()
{
background(255);
noStroke();
fill(255,0,0);
rect(250,250,500,300);
image(commie,285,mouseY,50,50);
image(glasses,750,150,150,75);
fill(0,0,255);
textSize(18);
text("Chris Wang",mouseX-100,mouseY-100);
image(waifu,xPos,yPos,random(125,250),random(125,250));
xPos=xPos+xDir;
if (xPos>width-20 || xPos<20)
{
xDir=-xDir;
}
yPos=yPos+yDir;
if (yPos>width-20 || yPos<20)
{
yDir=-yDir;
}
}
