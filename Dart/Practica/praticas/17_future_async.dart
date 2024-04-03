void main() async{
  print('Tu orden esta en proceso...');
  print(await crearOrden());
}

Future<String> crearOrden() async {
  var orden = await pedidoCliente();
  return 'Tu pediste $orden';
}

Future<String> pedidoCliente() =>
    Future.delayed(const Duration(seconds: 2), () => 'Cafe');



//-----------------OTRO JEMPLO-----------------
void main() async{
  
  print('La suma esta calculando...');
  print(await suma());
  suma();
  
}

Future<int> suma() async{
  var laSuma = await sumatoria(3,3);
  return laSuma;
}

Future<int> sumatoria(int a, int b) => 
  Future.delayed(const Duration(seconds: 2), () => (a*b) );

