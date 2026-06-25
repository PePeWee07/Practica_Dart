void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Charizard',
    'hp': 130,
    'isAlive': true,
    'abilities': <String>['Bola de fuego', 'Llamarada'],
    'sprites': {1: 'charizard/front.png', 2: 'charizard/back.png'}
  };

  print(pokemon);
  print("");

  print('Pokemon: ${pokemon['name']}');
  print('Habilidad del Pokemon: ${pokemon['abilities']}');

  print('Sprite Front: ${pokemon['sprites'][1]}');
  print('Sprite Back: ${pokemon['sprites'][2]}');
}
