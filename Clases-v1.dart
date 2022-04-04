void main() {
  
  // creo una instancia de la clase Heroe
  final wolverine = new Heroe();
  
  // le asigno un valor a la propiedad nombre de la instancia de la clase Heroe
  wolverine.nombre = 'Logan';
  wolverine.poder  = 'Regeneración';
  
  // imprimo la instancia de la clase Heroe llamada wolverine
  print(wolverine);
// print(wolverine.poder);
  
  
}


class Heroe {
 
  // propiedades de la clase Heroe
  // el ? es para que sus valores puedan ser null y no me de error si las dejo sin inicializar.
  String? nombre;
  String? poder;
  
  // sobreescribo el método toString, el cual afecta el print.
  // básicamente cambio el comportamiento de lo que sucede cuando alguien haga un print de una instancia de mi clase.
  @override
  String toString() {
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
  }
  
}
