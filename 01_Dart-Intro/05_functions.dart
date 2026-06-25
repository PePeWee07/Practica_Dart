void main() {
  print(greetEveryone());
  print(addTwoNumbers(10, 10));
  print(greetPerson(name: 'Jose', message: 'Hi!'));
}

String greetEveryone() {
  return 'Hello';
}

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message $name';
}
