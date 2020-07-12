// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/KWoJgHFYWxY
// Coding Challenge #30: Phyllotaxis
// http://algorithmicbotany.org/papers/abop/abop-ch4.pdf
// updated 12 July 2020 
// Modified by Rupert Russell for use with Redbubble 
// artwork on redbubble at: 

int n =  1800130; // 200010;
float c = 8.5;
float start = 0;
float hu ;
float radius = 20;

float rrr, ggg, hhh, sss, bbb;

void setup() {

  size(9144, 9144);
  // size(500, 500);
  colorMode(HSB, 255, 255, 255);
  background(0);
  // stroke(0);
  noStroke();
  strokeWeight(.5);
  println("Running");
}

// https://raw.githubusercontent.com/CodingTrain/Rainbow-Code/master/challenges/CC_30_Phyllotaxis/CC_30_Phyllotaxis.pde

void draw() {
  noLoop();
  translate(width / 2, height / 2);
  for (int i = 0; i < n; i++) {
    float a = i * radians(137.52); // radians(137.51);
    float r = c * sqrt(i);
    float x = r * cos(a);
    float y = r * sin(a);

    rrr = (a + r) % 200;
    ggg = (a - r) % 220;
    bbb = a % 256;
    // fill(rrr,ggg,bbb);

    hhh = (a % ( r / 15) ); 

    sss = (a - r) % 256;
    bbb = a % 256;

    fill(hhh, sss, bbb);

    // println(rrr + " " + ggg + " "  + bbb);
    //  println(hhh + "," + sss + ","  + bbb);
    // println(hhh);
    //   noStroke();

    radius = radius + 0.0001;
    println("radius = " + radius);

    ellipse(x, y, radius, radius);
  }
  println("Phyllotaxis-27-" + n + "-" + hhh + ".png");
  save("Phyllotaxis-27-" + n + "-" + hhh + ".png");
  println("saved");
  exit();
}
