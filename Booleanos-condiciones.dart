void main(){
  
  // ? es parte de null safety, y significa que el valor de la variable puede ser nulo.
  // de lo contrario sería imposible manejar un null, ya que un bool no puede ser null, y el programa tiraría error.
  // de esta manera si recibo un null, puedo crear condiciones para controlar lo que sucede con ese null, como mostrar un error personalizado, etc.
  bool? isActive = false;
  
  
  if(isActive == null) {
    print('isActive es null');   
  } else {
    
    print('No es null');
    
    if(isActive == true) {
      print('isActive es true');
    } else {
      print('isActive es false');
    }
    
    
  }
  
  
}
