import 'dart:async';

void main() {
  // Creamos un stream controller para controlar nuestro stream
  final StreamController<int> streamController = StreamController<int>();

  // Creamos un stream que emite números del 1 al 5
  final Stream<int> stream = streamController.stream;

  // Nos suscribimos al stream para recibir los datos
  final StreamSubscription<int> subscription = stream.listen(
    (int number) {
      print('Número recibido: $number');
    },
    onError: (error) {
      print('Error: $error');
    },
    onDone: () {
      print('Stream completado');
    }
  );

  // Emitimos los números del 1 al 5 en el stream
  for (int i = 1; i <= 5; i++) {
    streamController.add(i);
  }

  // Indicamos que hemos terminado de emitir datos al stream
  streamController.close();
}
