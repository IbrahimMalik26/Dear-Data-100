void setup() {
  size(1000, 500);
  println("this is a visual rep of my daily commute (train and bus)");
  println("as well as my emotions/actions during the journey");
  println("time lines = 30mins per line starting from line 1");
}

void draw() {
  background(255);

  float chunkHeight = height / 3.0; // divide total height by 3 estm height of each chunk

  stroke(0); // make the lines black
  strokeWeight(2); //and thicker so its more visible

  // chunk1 top
  fill(240); //fill grey
  rect(0, 0, width, chunkHeight+30); //draw rectangle at chunk position

  // chunk 2 middle
  fill(220); //fill lighter grey
  rect(0, chunkHeight, width, chunkHeight+30); //draw rectangle at chunk position

  // chunk3 bottom
  fill(200); //fill even lighter grey
  rect(0, chunkHeight * 2, width, chunkHeight+30); //draw rectangle at chunk position

  // red border that gets drawn ontop of the chunks
  noStroke(); //no rectangle line border so its one contin looking shape
  fill(#FF0D11); //red
  rect(0, 0, 30, height); //left rectangle
  rect(0, 0, width, 30); //top rectangle

  //time lines - 50pixels per gap - 30mins per line starting from line 1
  stroke(0);
  strokeWeight(2);

  for (int x = 30; x <= width; x += 50) { //loop starts at pos x = 30 (placed at edge of red box) and places markers for time
    line(x, 0, x, 30);
  }
}
