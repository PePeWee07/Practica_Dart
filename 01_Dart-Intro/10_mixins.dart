void main() {
  final flipper = Delfin();
  final batman = Muricielago();

  flipper.nadar();
  batman.volar();
  batman.caminar();
}

// Molde Principal
abstract class Animal {}

// Molde secundario
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

// Mixins
mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

// Mamimeferos
class Delfin extends Mamifero with Nadador {}

class Muricielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

// Pajaros
class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

// Pescado
class Tiburcio extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}
