void main (){
  

  
  print ( greetPerson( name:'Jose' ) ); 
  
  
}


// Al encerrar los paremetros entre llaves, se convierten en parametros con nombre y son opcionales
// required es para que el parametro sea obligatorio
String greetPerson( { required String name, String message = 'Hello' } ) {
  return '$message, $name';
}