import uibooster.*;

UiBooster booster1;
UiBooster booster2;
UiBooster booster3;

String name;
String manadslon;
String procent;
float svar;

void setup() {
  size(800, 400);
  background(10);

  booster1 = new UiBooster();
  name = booster1.showTextInputDialog("Vad heter du?");

  booster2 = new UiBooster();
  manadslon = booster2.showTextInputDialog("Vad är din månadslön i kr?");
  
  booster3 = new UiBooster();
  procent = booster3.showTextInputDialog("Vad är din löneförhöjning i procent?");
  
  float manadslon1 = float(manadslon);
  float procent1 = float(procent);
  svar = manadslon1 * (procent1/100+1);
  
}

void draw() {
 
  textAlign(CENTER, CENTER);
  textSize(32);
  text (name + " din nya lön är " + svar, width/2, height/2);
}
