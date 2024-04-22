import 'dart:async';

//Future encadenado ocupando el resultado del anteriro para continuar con el siguiente
void main() {
  print('Inicio del programa');

  obtenerNumero()
      .then((numero) => doble(numero))
      .then((resultado) => cuadrado(resultado))
      .then((resultadoFinal) {
    print('El resultado final es: $resultadoFinal');
    print('Fin del programa');
  }).catchError((error) {
    print('Ocurrió un error: $error');
  });

  print('Fin del main');
}

Future<int> obtenerNumero() {
  return Future.delayed(Duration(seconds: 2), () {
    return 5;
  });
}

Future<int> doble(int numero) {
  return Future.delayed(Duration(seconds: 2), () {
    return numero * 2;
  });
}

Future<int> cuadrado(int numero) {
  return Future.delayed(Duration(seconds: 2), () {
    return numero * numero;
  });
}
