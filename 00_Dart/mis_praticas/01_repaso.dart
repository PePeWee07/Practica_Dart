void main() {
  //tipos de variables
  int entero = 10;
  double decimal = 10.5;
  String texto = 'Hola Mundo';
  bool booleano = true;
  List<int> lista = [1,2,3,4,5];
  List<String> lista2 = ['Hola', 'Mundo'];
  Map<String, dynamic> mapa = {
    'nombre': 'Juan',
    'edad': 30
  };
  //imprimir variables
  print(entero);
  print(decimal);
  print(texto);
  print(booleano);
  print(lista);
  print(lista2);
  print(mapa);
  //imprimir variables con interpolación
  print('El valor de la variable entero es: $entero');
  print('El valor de la variable decimal es: $decimal');
  print('El valor de la variable texto es: $texto');
  print('El valor de la variable booleano es: $booleano');
  print('El valor de la variable lista es: $lista');
  print('El valor de la variable lista2 es: $lista2');
  print('El valor de la variable mapa es: $mapa');

  
}