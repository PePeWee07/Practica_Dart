void main(){
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  //final abilities = <String>['impostor'];
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['ditto/front.png','ditto/back.png'];
  
  //dynamic  == null
  dynamic errorMessage = 'Hola';
  
  print("""
  $pokemon,
  $hp,
  $isAlive,
  $abilities,
  $sprites
  """);
  
  
}

void main() {
  // Uso de const: El valor se conoce en tiempo de compilación.
  const int edadConst = 20; // La edad es conocida en tiempo de compilación.
  print('Edad constante: $edadConst');

  // Uso de final: El valor se asigna en tiempo de ejecución.
  final int edadFinal = obtenerEdad(); // La edad se asigna en tiempo de ejecución.
  print('Edad final: $edadFinal');
}

int obtenerEdad() {
  // Supongamos que aquí hay una lógica compleja para obtener la edad.
  return 25;
}

// edadConst se declara como const, lo que significa que su valor (20) es 
// conocido en tiempo de compilación. No importa cuándo se ejecute el programa, 
// edadConst siempre tendrá el valor 20.

// edadFinal se declara como final. Su valor se asigna en tiempo de ejecución
//  llamando a la función obtenerEdad(). Aunque edadFinal es inmutable después 
//  de la asignación, su valor (25) se determina en tiempo de ejecución.