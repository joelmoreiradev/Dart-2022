/* En esta segunda versión del código "Clases", no quiero crear la instancia de la clase Heroe y luego inicializar sus valores (como en Clases-v1), 
 * en su lugar quiero que a la hora de crear la instancia la persona pueda mandar los valores directamente */

void main() {
  
  // creo una instancia de la clase Heroe
  // el new es opcional
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneración');
  
  // le asigno un valor a la propiedad nombre de la instancia de la clase Heroe
//   wolverine.nombre = 'Logan';
//   wolverine.poder  = 'Regeneración';
  
  // imprimo la instancia de la clase Heroe llamada wolverine
  print(wolverine);
// print(wolverine.poder);
  
  
}


class Heroe {
 
  String nombre;
  String poder;
  
//   Heroe(String? pNombre, String? pPoder) {
//     this.nombre = pNombre;
//     this.poder = pPoder;
//   }
  
  // Forma super corta de usar un constructor y con el mismo resultado que el código comentado de arriba
  // inicializa y recibe los argumentos asignandolos a las propiedades correspondientes (String nombre, String poder)
  // las llaves { } son para que sean argumentos con nombre.
  Heroe({required this.nombre, required this.poder});
  
  // sobreescribo el método toString, el cual afecta el print.
  // básicamente cambio el comportamiento de lo que sucede cuando alguien haga un print de una instancia de mi clase.
  @override
  String toString() {
    return 'El nombre es: ${this.nombre}, y su poder es: ${this.poder}';
  }
  
}
