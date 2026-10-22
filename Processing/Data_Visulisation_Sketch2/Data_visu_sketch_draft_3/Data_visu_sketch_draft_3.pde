String[] dearData; // stores all of csv as an array
String[] startTime; //AM
String[] endTime; //PM
String[] busTiming; // > or < 5mins late
String[] trainTiming; // > or < 5mins late
String[] mood; // Tired/Angry/Happy/Sad
String[] currentActivity; //Listening to music/Texting a friend/Reading a WebToon/On a call

void setup() {

  size(1000, 500); // creating a window thats  1000 by 500px
  //find the file and load it into the table dearData
  dearData = loadStrings("DearData.txt");
  //if the data file doesnt load then this makes sure the program still runs and doesnt go schitzo
  if (dearData == null) {
    println("theres no data found so like this is here so i dont crash");
  } else {
    println("data has been loaded. yay..."); //message to verify loaded file 
    println("file has " + dearData.length + " line(s)"); //checks if it can read/tells how many line(s)
    
    //for every loop from 0 to array length, split the data into tokens by each comma
    for (int D = 0; D< dearData.length; D++){ 
      String[] token = split(dearData[D], ",");
      println(token[0]); //testing of tokens have correct values
      println(token[1]);
      println(token[2]);
      println(token[3]);
      println(token[4]);
    }
  }
  
  

}

void draw() {
  background(255);// set background to white at start - could put in setup but it works sooo...

  // here im initialising the variables that will hold the
  // sizing for my table in the window
  //println(mouseX, mouseY); //for position testing
  float chunkHeight = height / 3.0; //vertical h
  float labelWidth = 80; // fixed size for week and other text elements
  float dayWidth = (width - labelWidth) / 7.0; //horizontal w

  // creating "zones" using rectangles of different shades also
  //draws the horizontal lines so 2 birds 1 stone lol
  stroke(0);
  strokeWeight(1);
  fill(240);
  rect(0, 0, width, chunkHeight);
  fill(220);
  rect(0, chunkHeight, width, chunkHeight);
  fill(200);
  rect(0, chunkHeight * 2, width, chunkHeight);


  // use a for loop to draw vertical lines across the window for the 7 days of the week
  for (int x = 0; x < 7; x++) { //loop 7 times by incrementation duh
    float dayX = labelWidth + x * dayWidth; //var stores/states where each line is placed
    line(dayX, 25, dayX, height);
  }
  // text settings
  fill(0);
  textSize(12);
  textAlign(CENTER, CENTER);
  // array made/initialised storing all days of the week
  String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" };

  // similar to vertical line draw but to search through each array index and place in each vert chunk made
  for (int i = 0; i < 7; i++) {
    float dayX = labelWidth + i * dayWidth + dayWidth / 2;
    text(days[i], dayX, 13);
  }
  // more text settings...
  textAlign(LEFT, CENTER);
  textSize(13);
  // array made to store each data piece that will be represented
  String[] labels = {"Train", "Bus", "Mood", "Activity"};
  // nested for loop to print the titles for each week and below each label down the left side of the window
  for (int week = 0; week < 3; week++) {
    float weekY = week * chunkHeight; // which chunk of grid on  left to start with

    textSize(14);
    text("Week " + (week + 1), 8, weekY + 35); //week printed for the needed chunk on left

    textSize(12);

    for (int i = 0; i < labels.length; i++) { // printing of labels under each week text
      float labelY = weekY + 65 + i * 23;
      text(labels[i], 8, labelY);
    }
  }
}
