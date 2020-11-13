// udvid programmet

// lav cancas størrer, måske 800x600 --> gjort

// tilføj en cirkel med følgende parameter width*0.5, height*0.5, 300, 10 --> gjort

// hvorfor er width og height ikke defineret?? (kig i reference) --> fordi det er program-variabler, som er defineret ud fra size(width, height) kommandoen.
// hvad betyder 200 og 4 i linje nummer 20? Størrelsen er 200. Antallet af ringe eller cirkler er 4.
// placer nu en cirkel på halvdelen af breden og 80% af højden. Størrelsen skal være 400 og den skal bestå af 15 cirkler. --> gjort
// kan du lave cirklerne i farver istedet for gråtoner? Se fill-kommande i reference. --> Ja, det kan man, man skal bare ændre fill() kommandoen til fill(0,i*grayValues,0) i stedet for fill(i*grayValues).

void setup() {
  size(800, 600);
  background(51);
  noStroke();
  noLoop();
}

void draw() {
  drawTarget(width*0.25, height*0.4, 200, 4);
  drawTarget(width*0.75, height*0.3, 120, 6);
  drawTarget(width*0.5, height*0.5, 300, 10);
  drawTarget(width*0.5, height*0.8, 400, 15);
}

void drawTarget(float xloc, float yloc, int size, int num) {
  float grayValues = 255/num;
  float steps = size/num;
  for (int i = 0; i < num; i++) {
    fill(i*grayValues);
    ellipse(xloc, yloc, size - i*steps, size - i*steps);
  }
}
