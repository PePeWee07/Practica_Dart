void main() {
  print('Inicio del MAIN');

  httpGet('http://google.com').then((resp) {
    print(resp);
  }).catchError((err) {
    print('Error: $err');
  });

  print('Fin del MAIN');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion';
    // ignore: dead_code
    return 'Respuesta de la peticion HTTP';
  });
}
