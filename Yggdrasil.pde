class Yggdrasil {

  //Atributos

  Node [] Rama; //Declarando Array de nodos

  //Constructor

  Yggdrasil(Node n) {
    Rama = new Node[1];
    Rama[0] = n;
  }

  //Métodos

  String checkSide(Node n, int val) { // Orden descendente

    String res;

    if (val >= int(n.value)) { 
      res = "left";
    } 
    
    else {
      res = "right";
    }

    return res;

  }

  boolean checkEmpty(Node n, String side) {
    boolean empty = false;

    if (side == "left") {

      if (n.left == null) {
        empty = true;
      }

    }

    if (side == "right") {

      if (n.right == null) {
        empty = true;
      }

    }

    return empty;

  }



  void addLeftChild(Node n) {
    n.left = str(Rama.length);
  }



  void addRightChild(Node n) {
    n.right = str(Rama.length);
  }

  

  void createNode(Node n, int val){

    String lado;
    lado = checkSide(n, val);

    if(lado == "left"){
      boolean vacio;
      vacio = checkEmpty(n, lado);

      if(vacio == true){
        addLeftChild(n);
        Node nuevo;
        nuevo = new Node(Rama.length,int(n.id),val);
        Rama = (Node []) append(Rama, nuevo);
      }

      else{
        createNode(Rama[int(n.left)],val);
      }

    }

    

    if(lado == "right"){
      boolean vacio;
      vacio = checkEmpty(n, lado);

      if(vacio == true){
        addRightChild(n);
        Node nuevo;
        nuevo = new Node(Rama.length,int(n.id),val);
        Rama = (Node []) append(Rama, nuevo);
      }

      else{
        createNode(Rama[int(n.right)],val);
      }

    }

  }




  void printData(int i) {
    //Atributos
    println(Arbolote.Rama[i].id);
    println(Arbolote.Rama[i].parent);
    println(Arbolote.Rama[i].value);
    println(Arbolote.Rama[i].left);
    println(Arbolote.Rama[i].right);
    println(Arbolote.Rama[i].order);
    println(Arbolote.Rama[i].orderLeft);
    println(Arbolote.Rama[i].orderRight);
  }



void acomodar(Node n){

if (n.left != null){              //revisarHijoIzq
  if (n.orderLeft == true){     //revisarOrdenIzq
     if (n.order == false){     //revisarOrden
       Ordenar(n);
       }
  } 
  else {
    irIzq(n);
  }
}   

  else {
     n.orderLeft=true;
  }

  if (n.order==false){              //revisarOrden
   Ordenar(n);
  }
  
  if (n.right == null){            //revisarHijoDerecha
     n.orderRight=true;
     irArriba(n);
  } 
  if(n.orderRight==false){     //revisarOrdenDerecha
   irDch(n); 
  }
  
  if(n.parent!=null){          //revisarPadre
   irArriba(n); 
  } 
}   //FIN

  void irIzq(Node n){
    n.orderLeft=true;
    //Atributos
  // println("ID es:");
  // println(n.id);
  // println("orderLeft es:");
  // println(n.orderLeft);
  // println("-----------");
    acomodar(Rama[int(n.left)]);
  }

  void irDch(Node n){
    n.orderRight=true;
    //Atributos
    // println("ID es:");
    // println(n.id);
    // println("orderRight es:");
    // println(n.orderRight);
    // println("-----------");
    acomodar(Rama[int(n.right)]);
  }

  void Ordenar(Node n){
    NewID[posNewID]=int (n.value);
    n.order= true;
    posNewID++;
    //Atributos
    println("ID es:");
    println(n.id);
   // println("order es:");
   // println(n.order);
   // println("orderLeft es:");
   // println(n.orderLeft);
   // println("orderRight es:");
   // println(n.orderRight);
   // println("Right es:");
   // println(n.right);
    println(NewID);
    println("-----------"); 
  }

  void irArriba(Node n){
 // println("Subir");
 // println("-----------");
     acomodar(Rama[int(n.parent)]);
  }
}
