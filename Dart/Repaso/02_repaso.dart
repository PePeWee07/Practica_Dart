void main() {
  final myName = "jose";
  var myAge = 24;
  const myConutry = "Ecuador";

  print("""Helou, mi name is ${myName.toUpperCase()},
           I'm $myAge years old
            and I'm from $myConutry
       """);


  final List<String> brothers = ["Pankracio", "Pernila", "Pakiako"];
  print(brothers.first.toUpperCase());
  print(brothers[2]);


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

  print('Name: ${pokemon['name']}');


  final Map<String, dynamic> pokemon2 = new Map();
  pokemon2['abilities'] = <String> ['Electric', 'fly'];
  print('Habilidad 2: ${pokemon2['abilities']}');
}