// Constructores con nombre v2
// Los constructores con nombre no son mas que constructores que tienen un nombre definido como: Clase.nombreConstructor
// Los constructores con nombre se pueden usar de manera adicional al constructor "base" de la clase.
// En este caso este tipo de constructor se está usando para recibir un Map como argumento y pasar sus propiedades a los atributos de la clase Heroe.

void main() {
  
  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'Dinero'
  };
  
  // '!' es para decirle a Dart de manera forzada que me acepte el rawJson['valor'] y no me muestre error porque yo sé que le voy a estar mandando un valor y no un null.
// final ironman = new Heroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);

  
  // creo una nueva instancia pero que utiliza el constructor con nombre para recibir un Map como argumento, le mando el Map llamado "rawJson"
  final ironman = new Heroe.fromJson(rawJson);
  
  // imprimo la instancia de la clase Heroe
  print(ironman);
  
}


class Heroe {
 
  // Las propiedades nombre y poder en este caso siempre van a tener un valor, por lo que no se usa ?.
  String nombre;
  String poder;
  
  // Forma super corta de usar un constructor
  // inicializa y recibe los argumentos asignandolos a las propiedades correspondientes (String nombre, String poder)
  Heroe({required this.nombre, required this.poder});
  
  // Constructor con nombre
  // el nombre del constructor puede ser cualquiera que se me ocurra, y se define luego del 'Heroe.', por lo que en este caso fromJson es su nombre
  // recibo un Map cuyo key es un String, y su value también de tipo String, y para luego poder referirme a ese Map que recibo, le voy a asignar el nombre "jsonRecibido".
  
  // ':' son para indicar lo que yo quiero ejecutar al momento en el que se esté creando una instancia de esta clase
  // si usara las llaves { } me daría error porque cuando llega al código que contienen ya es muy tarde para asignarle un valor a this.nombre, this.valor
  Heroe.fromJson(Map<String, String> jsonRecibido):
    // la propiedad nombre de la clase va a tener el valor de la propiedad nombre del Map que se recibió
    // jsonRecibido es la referencia que tengo del Map recibido, podía ser cualquier otro nombre.
    this.nombre = jsonRecibido['nombre']!,
    // si no llega a existir un poder en el Map, el programa va a dar error porque yo permití que recibiera un null como si realmente tuviera valor
    // para resolver esto, puedo usar ?? para decir que si se recibe un null, el valor de poder va a ser 'Sin poder'
    this.poder = jsonRecibido['poder'] ?? 'Sin poder'; // Cuando se está usando ':', el ; final es lo que determina en donde termina el constructor con nombre
    
  
  
  // sobreescribo el método toString, el cual afecta el print.
  // básicamente cambio el comportamiento de lo que sucede cuando alguien haga un print de una instancia de mi clase.
  @override
  String toString() {
    return 'El nombre es: ${this.nombre}, y su poder es: ${this.poder}';
  }
  
}
