OPC opc;
PImage im;

void setup()
{
  size(600, 200);

  // Load a sample image
  im = loadImage("Colorado_Buffaloes_logo.svg.png");

  // Connect to the local instance of fcserver
  opc = new OPC(this, "127.0.0.1", 7890);

  // Map one 64-LED strip to the center of the window
    opc.ledGrid(0, 54, 18, width/2, height/2, width/50, height/18, 0, true, false);

}

void draw()
{
  // Scale the image so that it matches the width of the window
//  int imHeight = im.height * width / im.width;

  // Scroll down slowly, and wrap around
//  float speed = 0.05;
 // float y = (millis() * -speed) % imHeight;
  
  // Use two copies of the image, so it seems to repeat infinitely  
 // image(im, 0, y, width, imHeight);
 // image(im, 0, y + imHeight, width, imHeight);
 image(im, 0, 0, width, height);
}
