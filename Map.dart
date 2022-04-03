void main() {
    
  // Un map es algo como un objeto JSON
  // funciona en base a 'key': 'value'
  
  
// --== Mapa totalmente dinámico que hay que evitar ==--
  
//   Map persona = {
//     'nombre': 'Joel',
//     'edad': 21,
//     'soltero': true,
//      true: false,
//      1: 100,
//      2: 500
//   };
  
// --== Mapa con sus tipos key:value bien definidos ==--  
  
    Map<String, dynamic> persona = {
    
    'nombre': 'Joel',
    'edad': 21,
    'soltero': true
    
  };
  
  // imprimir el Map completo
  print(persona);
  
  // agregar un nuevo par key:value al Map
  persona.addAll({'apellido': 'Moreira'});
  
  // imprimir el Map completo actualizado
  print(persona);
  
  // Obtener un valor específico de un Map usando su key
  print(persona['apellido']);
  
}
