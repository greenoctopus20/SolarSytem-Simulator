// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/FGAwi7wpU8c

class Planet {
  float radius;
  float distance;
  Planet[] planets;
  float angle;
  float orbitspeed;
  PVector v;

  PShape globe;

  Planet(float r, float d, float o, PImage img) {

    v = PVector.random3D();

    radius = r;
    distance = d;
    v.mult(distance);
    angle = random(TWO_PI);
    orbitspeed = o;

    noStroke();
    noFill();
    globe = createShape(SPHERE, radius);
    globe.setTexture(img);
  }

  void orbit() {
    angle = angle + orbitspeed ;
    
  }


  void show() {
    pushMatrix();
    noStroke();
    PVector v2 = new PVector(1, 0, 1);
    PVector p = v.cross(v2);
    rotate(angle, p.x , p.y, p.z);
    stroke(255);
  

    translate(v.x, v.y, v.z);
    noStroke();
    fill(255);
    shape(globe);
    //sphere(radius);
    //ellipse(0, 0, radius*2, radius*2);
    popMatrix();
  }
}
