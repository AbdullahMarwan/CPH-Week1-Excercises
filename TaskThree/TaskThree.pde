//TaskThree Abdullah Marwan

//Each of the Traffic Light colors that are stored in variables
color green = color(0, 255, 0);
color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color gray = color(128, 128, 128);
color black = color (0, 0, 0);

//Traffic Light circle with standard color
color circle1 = color(128, 128, 128);
color circle2 = color(128, 128, 128);
color circle3 = color(128, 128, 128);

int size = 150; //Size of circle

int count = 0; //Used to cycle through traffic colors

void setup() {
  size(200, 500);
  background(black);
  frameRate(0.5);
}


void draw() {
  
  //Switch Case to cycle through the light colors using count
  switch (count) {
  case 0: //Default light
    circle1 = gray;
    circle2 = gray;
    circle3 = gray;
    break;

  case 1: //Stop light
    circle1 = red;
    circle2 = gray;
    circle3 = gray;
    break;

  case 2: //Steady light 
    circle1 = red;
    circle2 = yellow;
    circle3 = gray;
    break;

  case 3: //GO Light
    circle1 = gray;
    circle2 = gray;
    circle3 = green;
    break;
  }
  
  //Draws the three circles and fills them in with the color corresponding to the current light
  fill(circle1);
  circle(width/2, 100, size);

  fill(circle2);
  circle(width/2, 260, size);

  fill(circle3);
  circle(width/2, 420, size);

  //Resets the count if it has reached max number. Increments the count if it is not maxed. 
  if (count == 3) {
    count = 0;
  } else count++;

}
