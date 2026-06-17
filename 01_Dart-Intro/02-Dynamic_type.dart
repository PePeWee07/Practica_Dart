void main() {
  final String pokemon = 'Charizard';
  final int hp = 100;
  final bool? isAlive = true;
  final List<String> abilities = ['Bola Fuego', 'Llamarada'];
  final sprites = <String>['...', '...'];

  print("""
  Caracteristicas del Pokemon:
  ${pokemon}
  ${hp}
  ${isAlive}
  ${abilities}
  ${sprites}
  """);
}
