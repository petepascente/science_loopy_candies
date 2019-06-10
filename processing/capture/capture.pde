OPC opc;

import processing.video.*;


Capture video;

void setup()
{
  size(640, 360);
  background(0);

  // Load and play the video in a loop
  video = new Capture(this, width, height);
  video.start();

  // Connect to the local instance of fcserver
  opc = new OPC(this, "127.0.0.1", 7890);

  // Map an 8x8 grid of LEDs to the center of the window
  opc.ledGrid(0, 6, 4, width / 2, height / 2, width / 6, height / 6,  0, true, false);
}

void draw()
{
  video.read();

  image(video, 0, 0, width, height);
}
