String[] poem; //this is where we will store our text files
JSONObject myJSON; //this is where we will store our JSONfile
Table myTable; //this is where we will store our CSV

void setup() {
  size(600, 600);
  background(255);

  poem = loadStrings("poem.txt"); //we load them using the appropriate functions
  myJSON = loadJSONObject("humans.json"); //and we need to make sure that they are
  myTable = loadTable("settings.csv"); //in a folder called 'data' inside our sketch folder (Sketch > Show sketch folder)

  fill(0);
  //because our poem is an array of strings
  //we use a for loop to draw them on our screen
  for (int i = 0; i < poem.length; i++) {
    text(poem[i], 20, 20+i*15);
  }


  JSONArray myHumans = myJSON.getJSONArray("humans"); //this is how we load the array called "humans" inside our JSON
  
  for (int i = 0; i < myHumans.size(); i++) { //we loop through this array
    
    JSONObject single_human = myHumans.getJSONObject(i); //and we access every single Object (each human, with age, name and happy)
    println(single_human.getString("name"));//and we print just the name
    
  }

  println("-------------------");
  
  myTable = loadTable("settings.csv", "header"); //we load the CSV file, telling it to pay attention to the first line, the "header"

  for (TableRow row : myTable.rows()) {//we go through each row of the table
    String set = row.getString("setting"); //we take the value in the column "setting"
    int val = row.getInt("value"); //we take the value in the column "value"
    println("the value for "+set+" is: "+val); //and we print it!
  }
}

void draw() {
}
