// librería incluída en Dart
// as es para establecer un alias y así usar nombreAlias.sqrt()
// el alias es para entender mejor de donde viene por ejemplo el sqrt()
import 'dart:math' as math;

void main() {
  
  final cuadrado = new Cuadrado(2);
  
  cuadrado.area = 100; // le mando un valor al setter area
  
  print('area: ${cuadrado.calcularArea() }');
  
  // esta es una forma permitida de asignar un valor a una propiedad de una clase.
//   cuadrado.lado = 20;
  
  print('lado: ${cuadrado.lado }');
  print('area get: ${cuadrado.area}'); // 20 * 20 = 400
  

}


class Cuadrado {
  
  // propiedad lado, la cual será inicializada en el constructor
  double lado;
  
  // getter para calcular el area
  // un getter se parece a un método normal, pero no lleva ()
  double get area {
    return this.lado * this.lado;
  }
  
  // establecer el lado según el area que reciba
  // para averiguar el lado se necesita usar la raiz cuadrada
  set area(double valor){
    this.lado = math.sqrt(valor);
  }
  
  // Constructor que recibe, inicializa y le asigna un valor a lado al momento de crearse la instancia
  Cuadrado(double lado):
    this.lado = lado;
  
  
  // método para calcular area
  double calcularArea() {
    return this.lado * this.lado;
  }
  
  
}
