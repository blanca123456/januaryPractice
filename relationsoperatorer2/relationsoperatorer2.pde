import uibooster.*;

UiBooster booster1;
UiBooster booster2;

int guess;
int secretNumber;
String gameState = "PLAY";

String answer;

void setup() {
  size(800, 400);
  booster1 = new UiBooster();
  booster2 = new UiBooster();
}

void draw() {

  background(10);
  textAlign(CENTER, CENTER);
  textSize(32);

  switch(gameState) {

    case("PLAY"):

    guess= int(booster1.showTextInputDialog("Gissa på ett heltal mellan 1 och 100!"));

    secretNumber = int( random(100)) + 1;


    if ( guess-secretNumber == 0) {
      text ("RÄTT!", width/2, height/2);
    } else if (guess-secretNumber == abs(10)) {
      text ("HYFSAT ÄNDÅ, INOM 10... rätt svar:" + secretNumber, width/2, height/2);
    } else { 
      text ("DÅLIG GISSNING, TYVÄRR rätt svar:" + secretNumber, width/2, height/2);
    }
    
    gameState = "ASK";

    break;

    case("ASK"):

    answer= booster2.showTextInputDialog("Vill du spela en gång till?");
    println(answer);
    if (answer == "ja") {
     gameState = "PLAY";
     println("PLAY");
    } 
    else {exit(); }

    break;
  }
}
