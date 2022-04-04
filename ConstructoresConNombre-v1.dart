// Constructores con nombre

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
 
  // propiedades nombre y poder, opcionales ya que pueden ser nulos.
  String? nombre;
  String? poder;
  
  // Forma super corta de usar un constructor
  // inicializa y recibe los argumentos asignandolos a las propiedades correspondientes (String nombre, String poder)
  Heroe({required this.nombre, required this.poder});
  
  // Constructor con nombre
  // el nombre del constructor puede ser cualquiera que se me ocurra, y se define luego del 'Heroe.', por lo que en este caso fromJson es su nombre
  // recibo un Map cuyo key es un String, y su value también de tipo String
  Heroe.fromJson(Map<String, String> json){
    // la propiedad nombre de la clase va a tener el valor a la propiedad nombre del Map que se recibió
    this.nombre = json['nombre']!;
    this.poder = json['poder']!;
  }
  
  // sobreescribo el método toString, el cual afecta el print.
  // básicamente cambio el comportamiento de lo que sucede cuando alguien haga un print de una instancia de mi clase.
  @override
  String toString() {
    return 'El nombre es: ${this.nombre}, y su poder es: ${this.poder}';
  }
  
}
