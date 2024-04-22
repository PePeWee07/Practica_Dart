//FUTURE 
//Simulacion de clima en CIUDAD

import 'dart:math';

void main() {
  print('---/ Inicio de la solicitud de clima \---');
  
  obtenerClima('Cuenca').then( (climaActual) {
    print(climaActual);
  }).catchError((err) {
    print('Error: $err');
  });
  
  obtenerClima2('Ambato').then( (climaActual){
    print(climaActual);
  }).catchError((err) {
    print('Error: $err');
  });
  
  print('---/ Fin de la solicitud de clima \---');
}

//Obtener el clima de la ciudad
Future<String> obtenerClima(String ciudad) {
  return Future.delayed(const Duration(seconds: 3), () {
    return 'El clima de $ciudad es soldeado';
  });
}

Future<String> obtenerClima2(String ciudad){
  return Future.delayed(const Duration(seconds: 2), () {
    return 'El clima de $ciudad es Nublado';
  });
}