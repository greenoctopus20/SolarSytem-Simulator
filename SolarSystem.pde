// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/FGAwi7wpU8c

import peasy.*;

Planet earth;
Planet venus;
Planet mercury;
Planet mars;
Planet jupiter;
Star[] Stars = new Star[100];

PeasyCam cam;
PImage sunTexture;
PImage[] textures = new PImage[10];

void setup() {
  size(900, 700, P3D );
  sunTexture = loadImage("sun.jpg");
  textures[0] = loadImage("mars.jpg");
  textures[1] = loadImage("earth.jpg");
  textures[2] = loadImage("mercury.jpg");
  textures[3] = loadImage("venus.jpg");
  textures[4] = loadImage("jupiter.jpg");
  cam = new PeasyCam(this, 700);
  earth = new Planet(32, 0, 3, textures[1]);
  mercury = new Planet(10, 100, -0.03, textures[2]);
  venus = new Planet(30, 535, -0.02, sunTexture);
  mars = new Planet(25 , 205, -0.02, textures[0]);
  jupiter = new Planet(45, 300 , -0.02,textures[4]);
  for(int i = 0 ; i < Stars.length ; i++)
  {
    Stars[i] = new Star();
    
  }

}

void draw() {
  background(0);
  ambientLight(255,255,255);
  pointLight(255, 255, 255, 0, 0, 0);
  earth.show();
  mercury.show();
  venus.show();
  mars.show();
  jupiter.show();
  earth.orbit();
  mercury.orbit();
  venus.orbit();
  mars.orbit();
  jupiter.orbit();
  
   for(int i = 0 ; i < Stars.length ; i++)
  {
    Stars[i].update();
    Stars[i].show();
    
  }
  
}
