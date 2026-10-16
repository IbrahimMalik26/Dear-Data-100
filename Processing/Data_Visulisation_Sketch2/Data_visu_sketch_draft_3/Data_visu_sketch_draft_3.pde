
// note to self-please annotate this later im struggling to understand the code revisiting after a while
void setup() {

  String[] dearData = loadStrings("DearData.txt");
  
  for (int t = 0; t< dearData.length; t++){
  String[] tokensData = split(dearData[t],",");
  printArray(dtokensData[]);
  println("hi");
  }
  size(1000, 500);
}

void draw() {
  background(255);

  float chunkHeight = height / 3.0;
  float labelWidth = 80;
  float dayWidth = (width - labelWidth) / 7.0;

  stroke(0);
  strokeWeight(1);

  fill(240);
  rect(0, 0, width, chunkHeight);

  fill(220);
  rect(0, chunkHeight, width, chunkHeight);

  fill(200);
  rect(0, chunkHeight * 2, width, chunkHeight);

  for (int x = 0; x < 7; x++) {
    float dayX = labelWidth + x * dayWidth;
    line(dayX, 25, dayX, height);
  }

  fill(0);
  textSize(12);
  textAlign(CENTER, CENTER);

  String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" };

  for (int i = 0; i < 7; i++) {
    float dayX = labelWidth + i * dayWidth + dayWidth / 2;
    text(days[i], dayX, 13);
  }

  textAlign(LEFT, CENTER);
  textSize(13);

  String[] labels = {"Train", "Bus", "Mood", "Activity"};

  for (int week = 0; week < 3; week++) {
    float weekY = week * chunkHeight;

    textSize(14);
    text("Week " + (week + 1), 8, weekY + 35);

    textSize(12);

    for (int i = 0; i < labels.length; i++) {
      float labelY = weekY + 65 + i * 23;
      text(labels[i], 8, labelY);
    }
  }
}
