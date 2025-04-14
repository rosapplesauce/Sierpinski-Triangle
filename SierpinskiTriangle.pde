int len = 700;

public void setup() {
  size(700, 700);
  background(250, 175, 205);
}

public void draw() {
  fill(255);//the color of the background
  sierpinski(width / 2 - len / 2, height - 50, len, 5); // recursion depth
}

// Function to draw the Sierpinski triangle
public void sierpinski(int x, int y, int len, int level) { //the recurrsion
  if (level == 0) {//recursion
    // Base case:single triangle
    fill (247, 192, 96);
    stroke(204, 153, 63);
    triangle(x, y, x + len, y, x + len / 2, y - (int)(Math.sqrt(3) * len / 2));
  } else {
    // Recursively draw 3 smaller triangles
    int halfLen = len / 2;
    int heightOffset = (int)(Math.sqrt(3) * halfLen / 2);
    
    // Top triangle
    sierpinski(x, y, halfLen, level - 1);
    // Bottom-left triangle
    sierpinski(x + halfLen, y, halfLen, level - 1);
    // Bottom-right triangle
    sierpinski(x + halfLen / 2, y - heightOffset, halfLen, level - 1);
    
  }
}
