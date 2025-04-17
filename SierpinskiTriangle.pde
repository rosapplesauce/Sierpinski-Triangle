int len = 700;

public void setup() {
  size(700, 700);//the size of the canvas
  background(250, 175, 205);//the light pink background
}

public void draw() {
  fill(255);//the color of the background
  sierpinski(width / 2 - len / 2, height - 50, len, 5); // recursion depth
  frameRate(10);//the speed of which the tringle colors change
}

// Function to draw the Sierpinski triangle
public void sierpinski(int x, int y, int len, int level) { //the recurrsion
  if (level == 0) {//recursion if statement 
    // Base case:single triangle
    fill (random(100,300),87, 148);//the color of the tringle using random on the red value to produce a array of different shades on the red and pink spectrum 
    stroke(166, 30, 100);//the darker color shadow around the triangles
    triangle(x, y, x + len, y, x + len / 2, y - (int)(Math.sqrt(3) * len / 2));
  } else {
    // Recursively draw 3 smaller triangles
    int halfLen = len / 2; //the size 
    int heightOffset = (int)(Math.sqrt(3) * halfLen / 2);
    
    // Top triangle
    sierpinski(x, y, halfLen, level - 1);
    // Bottom-left triangle
    sierpinski(x + halfLen, y, halfLen, level - 1);
    // Bottom-right triangle
    sierpinski(x + halfLen / 2, y - heightOffset, halfLen, level - 1);
    
  }
}
