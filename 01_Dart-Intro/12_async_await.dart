void main() async {
  print('Inicio del MAIN');

  try {
    final value = await httpGet('http://google.com');
    print(value);
  } catch (err) {
    print(err);
  }

  print('Fin del MAIN');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la peticion';
  // ignore: dead_code
  return 'Respuesta de la peticion HTTP';
}
