void main (){
  
  print( greetEveryone() );
  
  print ( saludos() );
  
  print ('Suma: ${addTwoNumbers( 10, 10 )}');
  
  print ('Resta: ${ resta( 5, 5 ) }');
  
  print ('Multipliacion: ${ multiplicacion( 30, 10 ) }');
  
  print ('Multipliacion: ${ multiplicacion2( 40, 10 ) }');
  
}

// Funcion Normal
String greetEveryone(){
  return  "Hello everyone";
}

//Funcion Flecha
String saludos() => 'Hola a todos';


int addTwoNumbers( int a, int b ) {
  return a + b;
}

int resta(int a, int b) => a - b;

// Parametro opcional
int multiplicacion(int a, int? b) {
  b ??= 0;
  return a * b;
}

// Parametro opcional con valor por defecto
int multiplicacion2(int a, [int b=0]) {
  return a * b;
}