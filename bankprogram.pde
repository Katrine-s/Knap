Knap luk =  new Knap(20, 20, 30, 30);
Knap ind1 = new Knap(90, 40, 140, 50);
Knap ud1 = new Knap(90, 120, 140, 50);
Knap ind2 = new Knap(340, 40, 140, 50);
Knap ud2 = new Knap(340, 120, 140, 50);
int konto1 = 0;
int konto2 = 0;

void setup() {
  size(600, 480);
}

void draw() {

  clear();
  background(230);

  //tegner lukke knappen
  luk.tegnknap();
  luk.setTekst("luk");

  //tegner ind1 knap
  ind1.tegnknap();
  ind1.setTekst("Indsæt 100 kr");

  //tegner ud1 knappen
  ud1.tegnknap();
  ud1.setTekst("Fjern 100 kr");

  //tegner ind2 knappen
  ind2.tegnknap();
  ind2.setTekst("Indsæt 100 kr");

  //tegner ud2 knappen 
  ud2.tegnknap();
  ud2.setTekst("Fjern 100 kr");

  //tegner kasse og tekst til konto 1
  fill(255, 255, 255, 0);  
  rect(360, 320, 80, 50);
  fill(0);
  textSize(16);
  text(konto2 + " Kr", 380, 320 + 25);
  text("konto 2", 380, 320 );

  //tegner kasse og teksten til konto 2
  fill(255, 255, 255, 0); 
  rect(120, 320, 80, 50);
  fill(0);
  text("konto 1", 140, 320 );
  text(konto1 + " Kr", 140, 320 + 25);
  
  //hvis knappen ind1 bliver trykket
  if (ind1.knapTrykket) {
    konto1 += 100;
    println("Konto 1: " + konto1);
    ind1.knapTrykket = false;
  }
  //hvis knappen ud1 bliver trykket
  if (ud1.knapTrykket) {
    konto1 -= 100;
    println("Konto 1: " + konto1);
    ud1.knapTrykket = false;
  }
  //hvis knappen ind2 bliver trykket
  if (ind2.knapTrykket) {
    konto2 += 100;
    println("Konto 2: " + konto2);
    ind2.knapTrykket = false;
  }
  //hvis knappen ud2 bliver trykket
  if (ud2.knapTrykket) {
    konto2 -= 100;
    println("Konto 2: " + konto2);
    ud2.knapTrykket = false;
  }
  //hvis knappen luk bliver trykket
  if (luk.knapTrykket) {
    exit();
  }
}
void mouseClicked() {
  ind2.klik();
  ind1.klik();

  ud1.klik();
  ud2.klik();

  luk.klik();
}
