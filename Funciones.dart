void main () {
  
  final nombre = 'Joel';
  
// saludar(nombre);
   saludar2(mensaje: 'Hola', nombre: nombre);
  
  
}


// función saludar, la cual recibe un nombre obligatorio y un mensaje opcional.
// las llaves cuadradas [ ] junto con el valor por defecto = 'Hola' indican que algo es opcional
void saludar(String nombre, [String mensaje = 'Hola']) {
  print('$mensaje $nombre');
}


// Las llaves { } indican que son argumentos con nombre
// para enviar esos argumentos a la hora de llamar la función, se usa nombreVariable: 'valor'
// required es para que siempre que alguien quiera usar mi función deba mandar si o si el nombre y mensaje.
void saludar2({required String nombre, required String mensaje}) {
   print('$mensaje $nombre');  
}
