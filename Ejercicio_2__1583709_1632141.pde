Population miGente;

void setup() {
  size(500, 500);
  miGente = new Population(15,15);
  background(0);
  miGente.showText();
  miGente.createPool("1583709/1632141"); //Eder Jair Carrizales Gonzalez/Aldair Briseño Carrasco
  

}

void draw() {
   background(0);
   miGente.createPool("1583709/1632141"); 
   miGente.showText();
   
}
