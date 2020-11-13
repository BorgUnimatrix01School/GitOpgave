
// forklar følgende program, linje for linje, med dine egne ord.
// hvordan bliver mouseClicked kaldt? --> den bliver kaldt ved at læse systemet og kigge efter events, som angiver at en museknap er blevet klikket.

// programmet skifter farve i rektanglen hver gang man klikker inden for canvas.

int value = 0; // integeren "value" bliver initieret og deklareret.

void draw() { // void draw bliver kaldt.
  fill(value); // kommandoen fylder fremtidige former med farven value, value, value.
  rect(25, 25, 50, 50); // en rektangel form bliver lavet med kommandoen, placeringen er (25, 25) og dens størrelse er 50 på begge sider.
}

void mouseClicked() { // denne funktion søger efter events hvor du klikker på en museknap. Den aktiverer, hvis du trykker og giver slip på en museknap.
  if (value == 0) { // if-statement, som tjekker om value er 0.
    value = 255; // hvis value er lige med 0, så skifter den value til 255.
  } else { // ellers...
    value = 0; // er value 0. Dette er en sikkerhed.
  }
  println(mouseX,mouseY); // konsollen printer musens placering, når du klikker på museknappen.
}
