String[] kulor = {"clubs", "diamond", "spades", "heart"};
String[] value = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"};
String[] cards = new String [52];  
int point;
int score ;

void setup() {
  size (750, 750);
  background (000);


  int plads =0;
  for (String k : kulor) {
    for (String v : value) {

      cards[plads]= v +" of "+ k;
      plads++;
    }
  }
}

void draw() {
}

void mouseReleased() {
  clear();
  int draw = int(random(0, 52));
  String kortTrukket = cards[draw];
  textSize(40);
  fill(255);
  text(kortTrukket, 100, 100);
  text(getPoint(kortTrukket), 100, 130);
}

int getPoint(String kort) {

  int point =0;
  String[] kortDele = split(kort, " of ");


  if (kortDele[0].equals("2"))point = 2;
  if (kortDele[0].equals("3"))point = 3;
  if (kortDele[0].equals("4"))point = 4;
  if (kortDele[0].equals("5"))point = 5;
  if (kortDele[0].equals("6"))point = 6;
  if (kortDele[0].equals("7"))point = 7;
  if (kortDele[0].equals("8"))point = 8;
  if (kortDele[0].equals("9"))point = 9;
  if (kortDele[0].equals("10"))point = 10;
  if (kortDele[0].equals("jack"))point = 10;
  if (kortDele[0].equals("queen"))point = 10;
  if (kortDele[0].equals("king"))point = 10;
  if (kortDele[0].equals("ace"))point = 11;

  score = score+ point;
  println(score);
  return point;
}
