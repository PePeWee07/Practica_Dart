void main() {
  
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'Hp' : 100,
    'isAlive' : true,
    'abilities' : <String> ['Impostor', 'fly'],
    'sprites' : {
      1 : 'ditto/front.png',
      2 : 'ditto/back.png'
    }
  };
  
  print(pokemon);
  print ('Name: ${ pokemon['name'] }');
  print ('Habilidades: ${ pokemon['abilities'] }');
  print ('Habilidad 2: ${ pokemon['abilities'][1] }');
  print ('Pintura: ${ pokemon['sprites'] }');
  print ('Pintura 2: ${ pokemon['sprites'][2] }');
  
  //Usando un constructor o agregar elementos a un mapa
  final Map<String, dynamic> pokemon2 = new Map();
  //final Map<String, dynamic> pokemon = {};

  pokemon2['name'] = 'Pikachu';
  pokemon2['Hp'] = 100;
  pokemon2['isAlive'] = true;
  pokemon2['abilities'] = <String> ['Electric', 'fly'];
  pokemon2['sprites'] = {
    1 : 'pikachu/front.png',
    2 : 'pikachu/back.png'
  };

  print(pokemon2);

  //Remover elementos de un mapa
  pokemon2.remove('Hp');
  print(pokemon2);

  //Verificar si un mapa contiene una llave
  print(pokemon2.containsKey('Hp'));
  print(pokemon2.containsKey('name'));


  //Iterar un mapa
  pokemon.forEach((key, value) {
    print('\n');
    print(key);
    print(value);
  });

  pokemon.forEach((key, value) {
    print('\n');
    print('$key : $value');
  });

}