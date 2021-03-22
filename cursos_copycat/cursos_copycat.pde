PImage img;
Ventana[] ventanas;
int numVentanas = 20;
void setup() {
  size(100, 100);
  surface.setVisible(false);
  img = loadImage("cursor.png");
  
  String[] args = {"ventana"};
  ventanas = new Ventana[numVentanas];
  
  for (Ventana v : ventanas) {
    v = new Ventana(img);
    PApplet.runSketch(args, v);
  }
}
