void main() async {
  print('Inicio del MAIN');

  try {
    final value = await httpGet('http://google.com');
    print('Exito: $value');
  } on Exception catch (err) {
    print('Existe una Exception la cual es $err');
  } catch (err) {
    print('OPSS Hubo un Error: $err');
  } finally {
    print('Fin del Try y Catch');
  }

  print('Fin del MAIN');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('Entraste en una Excepcion');
//   throw 'Error en la peticion';
  //   return 'Respuesta de la peticion HTTP';
}
