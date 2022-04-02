// Nota: En Dart, los arrays son llamados "List".


void main() {
  
  // defino un listado de enteros
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  
  // imprimo el arreglo completo
  print(numeros);
  
  // agrego un nuevo valor al final del List
  numeros.add(11);
  
  // imprimo el listado completo + el 11 
  print(numeros);
  
  // imprimo el 1
  print(numeros[0]);
  
  
  
 // - - - = generar un listado de 100 números = - - - 
    
  // final masNumeros = List.generate(100, (int index) => 10);
  final masNumeros = List.generate(100, (int index) => index);
  
  print(masNumeros);
  
}
