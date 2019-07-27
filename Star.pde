class Star {
  float x;
  float y;
  float z;
  
  
 Star() {
   x = random(-width * 2 , width * 2 );
   y = random(-height* 2 , height* 2);
   z = random(-100, 500);
 }
 
 void update() {
   z = z + 0.0001;
 }
 
 void show() {
   fill(255);
   noStroke();
   ellipse(x, y, 10 ,11);
   
   rotate(z);
 }
 
}
