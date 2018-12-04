int [] x = {4,12,9,23,6,91,2,54,37,6,1,5,78,87,25};

int [] NewID;

int posNewID;

Node root; //Declarando nodo

Yggdrasil Arbolote;



void setup(){
  
  posNewID = 0;
  
  NewID = new int [x.length];

  root = new Node(x[0]); //Inicializar nodo

  Arbolote = new Yggdrasil(root);

println(x);
println("-----------");
 
  
  for(int i = 1; i < x.length; i++){         // Constructor del arbol

    Arbolote.createNode(Arbolote.Rama[0], x[i]);

  }

  for(int i = 0; i < x.length; i++){      // Ver atributos de nodos

    //Arbolote.printData(i);

   //println("-----------");

 }
  
    Arbolote.acomodar(Arbolote.Rama[0]);   // Ordenar numeros de "x"
     println(NewID);
}



void draw(){

}
