// Clase abstracta principal "Animal"
abstract class Animal {}

// subclases de tipos de animales, extienden de "Animal"
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}


// características de los animales
abstract class Volador {
  void volar() => print('Estoy volando');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando');
}



// Animales que extienden de un tipo de Animal (Mamífero,Ave,Pez)
// y son de uno o mas tipos (volador, caminante, nadador)
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  
  // delfín - puede nadar
  final delf = new Delfin();
  delf.nadar();
  
  print(' '); // espacio entre el delfín y el murciélago

  // murciélago - puede caminar y volar
  final murci = new Murcielago();
  murci.caminar();
  murci.volar();
  
  
}
