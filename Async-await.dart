void main() async {

  
 print('Antes de la petición');
  
  // Ejecuto la función httpGet, que es un Future
  // espero a que se resuelva usando el await
  // finalmente guardo la respuesta en data.
  final data = await httpGet('https://api.nasa.com/aliens');
  
  print(data);
  
// esto es lo mismo que getNombre('10').then( (data) => print(data) ); solo que resumido
//  getNombre('10').then(print);
  
  
 // el await es para esperar a que se obtenga el resultado de la ejecución del Future 
 final nombre = await getNombre('10');
 print(nombre);
  
 print('Fin del programa');
  
  
}


Future<String> getNombre( String id ) async {
  return '$id - Joel';
}



// Función de tipo Future que se ejecuta de forma asíncrona
// En este caso es una implementación ficticia de una petición http que tarda 3 segundos en devolver una respuesta
// El future es de tipo String, lo que significa que solamente retornará algo de ese tipo.

// Al especificar el tipo de dato en una función/método, tengo el beneficio de que
// el editor de código me brinda autocompletado en base a Strings, como el .toUpperCase()
Future<String> httpGet(String url) {
   return Future.delayed(Duration(seconds: 3), () {
      return 'Hola mundo - 3 segundos';
   });
}
