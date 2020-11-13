// Find og ret fejlen
// programmet beregner hvad kartofler koster og udskriver prisen


// konstant moms
float moms = 0.25;

// Kartoffel variabler
int antal = 5;
int pris = 6;

void setup(){
  size(100,100);
  noLoop();
}

void draw(){
  float prisUdenMoms = 0;
  float prisMedMoms = 0;
  // beregn pris
  prisUdenMoms = beregnPris(antal, pris);
  // beregn moms
  prisMedMoms = beregnMoms(prisUdenMoms, moms);
  // udskriv bon
  udskrivBon(prisUdenMoms, prisMedMoms);
}

// beregner pris fra antal * kilo og retrurnerer samlet pris
float beregnPris(int antal, float pris){
  return antal * pris;
}


// beregner moms og returnerer pris med moms
float beregnMoms(float pris, float moms){
 return pris * (1 + moms);
}


//udskriver en kasseBon til consol
void udskrivBon(float prisUdenMoms, float prisMedMoms){
 println("kg pris: ", pris);
 println("antal kilo: ", antal);
 println("i alt uden moms: ", prisUdenMoms);
 println("momsbeløb: ", prisMedMoms - prisUdenMoms," procent: ", moms*100, "%");
 println("i alt med moms: ", prisMedMoms);
}
