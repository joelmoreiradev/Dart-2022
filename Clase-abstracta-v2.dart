void main() {
  
  // instancia de la clase Perro, y otra de la clase Gato
  final perro = new Perro();
  final gato = new Gato();
  
  // ejecuto el método sonidoAnimal() enviándole el animal al cual debe ejecutar el método interno "emitirSonido()"
  sonidoAnimal(perro);
  sonidoAnimal(gato);
  
}

// método "general" para emitir sonidos
// Animal animal quiere decir que recibe algo que implemente o extienda de la clase Animal
// recibe un animal de tipo Animal (perro, gato, etc)
void sonidoAnimal(Animal animal) {
  
  // esto va a ser equivalente a perro.emitirSonido(), gato.emitirSonido(), etc.
  animal.emitirSonido();
  
}

// -------------- CLASE ABSTRACTA LLAMADA ANIMAL ----------------
// esta clase solo es usada para ser implementada o extendida en otras clases, no se puede instanciar.
abstract class Animal {
  
  // propiedades de la clase abstracta, las cuales van a tener que ser implementadas/creadas obligatoriamente por las clases que implementen Animal
  int? patas;
  
  void emitirSonido();
  
}


// clase normal Perro, la cual implementa la clase Animal
// para poder implementarla, si o si se debe también implementar todas las propiedades que están definidas en Animal
class Perro implements Animal {
  
  int? patas;
  
  void emitirSonido() => print('Guau');
  
}

class Gato implements Animal {
  
  int? patas;
  int? cola;
  
  void emitirSonido() => print('Meow');
}
