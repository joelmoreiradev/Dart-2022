void main() {

  
 print('Antes de la petición');
  
 // ejecuto la función httpGet, que es un Future
 // .then es para indicar lo que se va a ejecutar DESPUÉS de que el future se resuelva
 // data es donde están los datos que retornó el future
 httpGet('https://api.nasa.com/aliens').then((data) {
   print(data.toUpperCase()); // imprimo la data, pero luego de convertirla en mayúsculas
 });
  
 print('Fin del programa');
  
  
}



// Función de tipo Future. Un Future permite que algo se ejecuta de forma asíncrona.
// En este caso es una implementación ficticia de una petición http que tarda 3 segundos en devolver una respuesta
// El future es de tipo String, lo que significa que solamente retornará algo de ese tipo.

// Al especificar el tipo de dato en una función/método, tengo el beneficio de que
// el editor de código me brinda autocompletado en base a Strings, como el .toUpperCase()
Future<String> httpGet(String url) {
   return Future.delayed(Duration(seconds: 3), () {
      return 'Hola mundo - 3 segundos';
   });
}
