import 'dart:async';

void main() {
  // controller para poder escuchar el mismo stream mas de una vez
  final StreamController<int> streamController = StreamController.broadcast();
  
  final Stream<int> stream = streamController.stream;
  
  StreamSubscription<int> subs = stream.listen((int value){
    print('Subs: $value');
  });
  
  StreamSubscription<int> subs2 = stream.listen((int value){
    print('Subs2: $value');
  });
  
  StreamSubscription<int> subs3 = stream.listen((int value){
    print('Subs3: $value');
  });
  
  streamController.add(23);
  streamController.add(09);
  
  
  //Metodos  del STREAM
  subs.pause();
  subs.resume();
  subs.cancel();
  
  //Metodo del Stream Controller
  streamController.close();
  
} 
