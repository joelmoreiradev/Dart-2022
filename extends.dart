void main() {
  final superman = new Heroe('Clark Kent','Volar');
  final luthor = new Villano('Lex Luthor','Dinero e Inteligencia');
  
  print(superman);
  print(luthor);
  
}


// a pesar de que Personaje es una clase abstracta, estoy inicializando su propiedad "nombre" desde otra clase mediante el uso de super()
// el super() de la clase Heroe apunta al constructor de la clase Personaje
abstract class Personaje {
  
  String poder;
  String nombre;
  
  Personaje(this.nombre, this.poder);
  
  @override
  String toString (){
    return '$nombre - $poder';
  }
  
}



class Heroe extends Personaje {
  
  // no debo implementar propiedades de Personaje, ya que al usar "extends Personaje" esas propiedades ya están dentro de esta nueva clase.
  
  // propiedad única de Heroe, ningún otro Personaje la tiene
  int valentia = 100;
  
  // super() hace el llamado al constructor de la clase de la cual se extiende.
  // es decir, super apunta al constructor "Personaje()"
  Heroe(String nombre, String poder): super(nombre, poder);
   
}



class Villano extends Personaje {
  
  // propiedad propia de Villano, ningún otro personaje la tiene
  int maldad = 90;
  
  // nuevamente, el constructor de villano recibe un nombre, y se lo asigna a la propiedad "nombre" de la clase abstracta Personaje
  // en lugar de usar this.nombre, solamente uso String nombre, y ese nombre lo apunto hacia la propiedad "nombre" de personaje con el "super(nombre)"
  Villano(String nombre, String poder): super(nombre, poder);
  
}
