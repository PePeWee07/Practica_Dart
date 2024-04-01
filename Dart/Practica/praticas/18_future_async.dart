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
