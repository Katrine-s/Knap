class Knap {

  boolean knapTrykket = false; 
  float positionX; 
  float positionY; 

  float sizeX, sizeY;

  Knap(int a, int b, int c, int d ) {
    positionX = a;
    positionY = b;
    sizeX = c;
    sizeY = d;
  }
 void klik() {
    if (
      mouseX > positionX &&
      mouseX < positionX + sizeX &&
      mouseY > positionY &&
      mouseY < positionY + sizeY) {
      knapTrykket = true;
    } else {
      knapTrykket = false;
    }
  }
  //laver tekst og tekst størrelse
  void setTekst(String tekst) {
    fill(0);
    text(tekst, positionX +(sizeX/8), positionY + (sizeY/2));
  }
  //tegner knap
  void tegnknap() {
    fill(255);
    rect(positionX, positionY, sizeX, sizeY);
  }
}
