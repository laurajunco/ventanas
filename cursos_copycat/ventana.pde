import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.PointerInfo;

public class Ventana extends PApplet {
  float x;
  float y;
  float easing = 0.05;

  PointerInfo inf = MouseInfo.getPointerInfo();
  Point p = inf.getLocation();
  Point cursor;
  PImage cursorImg;
  
  public Ventana(PImage img) {
    cursorImg = img;
  }
  
  public void settings() {
    size(140, 128);
  }

  public void setup() {
    
    background(255);
    imageMode(CENTER);
    surface.setLocation((int) random(displayWidth), (int) random(displayHeight));
  }
  
  public void draw() {
    background(255);
    inf = MouseInfo.getPointerInfo();
    p = inf.getLocation();
    
   float targetX = map(p.x, 0, displayWidth, 0, width);
   float dx = targetX - x;
   x += dx * easing;
  
   float targetY = map(p.y, 0, displayHeight, 0, height);
   float dy = targetY - y;
   y += dy * easing;
   
   
   image(cursorImg ,(int)x, (int)y, 20, 20);
  }
}
