import 'dart:async';

void main() async {
  print('Inicio del programa');

  try {
    final numero = await obtenerNumero();
    final resultadoDoble = await doble(numero);
    final resultadoFinal = await cuadrado(resultadoDoble);

    print('El resultado final es: $resultadoFinal');
  } catch (error) {
    print('Ocurrió un error: $error');
  }

  print('Fin del programa');
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
