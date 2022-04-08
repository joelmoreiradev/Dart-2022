void main() {
  
  // instancia de la clase Perro
  final perro = new Perro();
  
  perro.emitirSonido();
  
}

// clase abstracta llamada Animal
// esta clase solo es usada para ser implementada o extendida en otras clases.
abstract class Animal {
  
  // propiedades de la clase abstracta
  int? patas;
  
  void emitirSonido();
  
}

// clase normal Perro, la cual implementa la clase Animal
// para poder implementarla, si o si se debe también implementar todas las propiedades que están definidas en Animal
class Perro implements Animal {
  
  int? patas;
  
  void emitirSonido() => print('Guau');
  
}
