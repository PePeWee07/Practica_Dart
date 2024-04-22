import 'dart:io';

void main () {
  print('Hola Mundo');
  print('Ingrese su nombre: ');
  String nombre = stdin.readLineSync().toString();
  nombre = nombre[0].toUpperCase() + nombre.substring(1);
  print('Hola mi estiamdo, Sr. $nombre');
}