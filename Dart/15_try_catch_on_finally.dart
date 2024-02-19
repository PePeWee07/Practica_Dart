void main() async {

  print('Inicio del programa');
  
  try{
    final value = await httpGet('https://google.com');
    print(value);
  } on Exception catch(err) { 
    print('!!!Tenemos una excepcion¡¡¡¡¡, $err');
  } catch(err) {
    print('Error, ${err}');
  } finally {
    print('Finally siempre se ejecute al terminar el getHTTP');
  }
  
  print('Fin del programa');
  
}

Future<String> httpGet(String url) async {
  
  throw Exception('Falta algo');
  
  //await Future.delayed( const Duration(seconds: 1));
  //return 'Respuesta http';
}