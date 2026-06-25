void main() {
  print('');
  final Hero wolverine = Hero(name: 'Logam', power: 'Regeneracion');

  print(wolverine);
  print(wolverine.power);
  print(wolverine.name);
}

class Hero {
  String name;
  String power;

  //   Hero(String pName, String pPower):
  //   name = pName, power = pPower;

  //   Hero(this.name, this.power);

  Hero({required this.name, this.power = 'No power'});

  @override
  String toString() {
    return 'Hola $name';
  }
}
