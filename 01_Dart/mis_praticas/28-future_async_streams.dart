import 'dart:async';

void main() {
  // STREAM FUTURE
  getUser().then((value) => print("User last 3seg: $value"));

  // STREAM INTERABLE
  getUserName().listen((event) => print("User: $event") );

  // STREAM PERIODIC
  getNumbers().listen((event) => print("Number: $event") );

  //Gestionar subscripcion
  StreamSubscription<int> subscription = getNumbers().listen((event) => print("Subscription_Number: $event") );
  Future.delayed(Duration(seconds: 3), () => subscription.cancel());
}

// STREAM FUTURE
Future<String> getUser() {
  return Future.delayed(Duration(seconds: 3), () => 'Jose');
}

// STREAM INTERABLE
Stream<String> getUserName() {
  return Stream.fromIterable(['Jose','Alberto','Mauricio']);
}

// STREAM PERIODIC
Stream<int> getNumbers(){
  return Stream.periodic(Duration(seconds: 1), (value) => value).take(5);
}


