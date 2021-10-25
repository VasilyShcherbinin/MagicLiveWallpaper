float circle = 200;
float rot;
float col;
float freq = 0.000005; 
float cont = 0;
float r;

void setup() {
  frameRate(144);
  fullScreen();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(radians(rot));

 ellipseMode(RADIUS);
  for (int i=0; i<500; i ++) {
    circle= 200 + 120*sin(millis()*freq*i);
    fill(255,255,255);
    noStroke();
    ellipse(circle*cos(i), circle*sin(i),3,3);    
    rot=rot+0.00005;
    
    circle= 210 + 120*sin(millis()*freq*i);
    fill(0,0,255);
    noStroke();
    ellipse(circle*cos(i), circle*sin(i),3,3);    
    rot=rot+0.00005;
    
    circle= 220 + 120*sin(millis()*freq*i);
    fill(255,0,0);
    noStroke();
    ellipse(circle*cos(i), circle*sin(i),3,3);    
    rot=rot+0.0001*2;
  }

}
