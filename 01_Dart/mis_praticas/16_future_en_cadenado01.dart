//Future encadenado uno dentro del otro
void main () {
  
  print('Inicio de las preguntas');
  
  obtenerNombreGato().then((nombre) {
    print ('Mi gato se llama $nombre');
    obtenerEdadGato(1).then((edad) {
      print('$nombre tiene $edad años');
      obtenerComidaGato('Wiskas').then((comida) {
        print('Mi $nombre a los $edad años ya puede comer $comida');
      });
    });
  });
  
  print('Fin de la presentacion');
  
}


Future <String> obtenerNombreGato() {
  return Future.delayed( const Duration(seconds: 1), () {
    return 'Nino';
  });
}

Future<int> obtenerEdadGato(int edad) {
  return Future.delayed(const Duration(seconds: 1), () {
    return edad;
  });
}

Future<String> obtenerComidaGato(String comida) {
  return Future.delayed(const Duration(seconds:1), () {
    return comida;
  });
}