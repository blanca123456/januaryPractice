import uibooster.*;

UiBooster booster1;

int guess;
int secretNumber;

textAlign(CENTER, CENTER);
textSize(32);

void setup() {
  size(800, 400);
  background(10);

  booster1 = new UiBooster();
  guess= int(booster1.showTextInputDialog("Gissa på ett heltal nmellan 1 och 100"!));

  secretNumber = int( random(100)) + 1;


  if ( guess-secretNumber == 0) {
    text ("RÄTT!"), width/2, height/2);
  } else if (guess-secretNumber == abs(10) {
    text ("HYFSAT ÄNDÅ, INOM 10... (rätt svar:" + secretNumber, width/2, height/2);
  } else { 
    text ("DÅLIG GISSNING, TYVÄRR", width/2, height/2);
  }
  
  }
