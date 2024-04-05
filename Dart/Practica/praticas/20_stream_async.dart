void main() {
  
  var streamAsincrono = contarHasta5();
  
  streamAsincrono.listen((value) {
    print(value);
  },
   onError: (err){
     print('Error: $err');
   }, 
    onDone: () {
      print('No mas datos');
    });
  
}

Stream<int> contarHasta5() async*{
  for(int i=1; i <= 5; i++){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}