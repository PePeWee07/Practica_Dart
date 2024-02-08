void main (){
  
  //Objeto
  final Map<String, dynamic> rawJson = {
    'power': 'Super',
    'name': 'Superman',
    'isAlive': true
  };
  
  
  //Utilizando constructor por defecto
  final Hero iroman = Hero(
    isAlive: false,
    power: "Money",
    name: "Tony Stark"
  );

  print(iroman);
  
  
  //Uitilizando constructor creado a partir de objeto
  final Hero superman = Hero.fromJson(rawJson);
  print (superman);

}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  
  //Constructor
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  
  //Constructor que recive un objeto
  Hero.fromJson( Map<String, dynamic> json ) :
    name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? 'No isAlive found';
  
  
  @override
  String toString() {
    return '$name, $power,  isAlive: ${ isAlive ? 'YES!' : 'NO' }';
  }
  
}