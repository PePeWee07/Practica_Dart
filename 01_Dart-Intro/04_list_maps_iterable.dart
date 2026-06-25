void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: $numbers');
  print('Length: ${numbers.length}');
  print('Index: ${numbers[0]}');
  print('first: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final numberGreaterThan5 = numbers.where((int num) => num > 5);
  final numberThan5 = numbers.where((int num) => num < 5);

  print('>5: ${numberGreaterThan5.toSet()}');
  print('<5: $numberThan5');
}
