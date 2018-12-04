class Base {
  //Atributos
  char numero;
  int valor;
  //Constructor
  Base() {
    valor = int(random(46, 58));
    //comentado ya que se utilizan solo numeros, descomentar si se utilizaran letras
   /* while (valor > 57 && valor < 65) { 
      valor = int(random(46, 90));
    }
    /*if (valor == 63) {
      valor = 32;
    }*/
    /*if (valor == 64) {
      valor = 46;
    }*/
    numero = (char) valor;
  }
  //Métodos
  void showData(){
    print(numero);
  }
}
