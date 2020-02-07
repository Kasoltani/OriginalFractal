float theta = 0;
float r = 0;
public void setup(){
  size(600,600);
  background(0);
}

public void draw(){
	fractal(0,0,10);
}

public void fractal(float x,float y, float siz){
  noStroke();
  ellipse(x+width/2,y+height/2,siz,siz);
  x = r * (float)Math.sin(theta);
  y = r * (float)Math.cos(theta);
  theta += .2;
  r += .05;
  if(siz>2){
    fractal(x,y,siz/1.001);
  }
}