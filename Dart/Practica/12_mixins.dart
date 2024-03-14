void main() {
  final delfin = Delfin();
  delfin.nadar();
}

//SUPER CLASE
abstract class Animal {}

//CLASES HEREDIRATIAS
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

//MIXINS
mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

//Mamimefros
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

//Aves
class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Nadador, Volador {}

//Pez
class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}
