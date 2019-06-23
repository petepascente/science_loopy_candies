OPC opc;

import processing.video.*;

Movie movie;

void setup()
{
  size(640, 360);
  background(0);

  // Load and play the video in a loop
  movie = new Movie(this, "sunspot.mp4");
  movie.loop();

  // Connect to the local instance of fcserver
  opc = new OPC(this, "127.0.0.1", 7890);

  // Map an 8x8 grid of LEDs to the center of the window
  opc.ledGrid(0, 54, 72, width/2, height/2, width/80, height/80, 0, false, false);
}

void movieEvent(Movie m) {
  m.read();
}

void draw()
{
  

 //if (movie.available() == true) {
  //  movie.read(); 
  //}
  image(movie, 0, 0, width, height);
}
