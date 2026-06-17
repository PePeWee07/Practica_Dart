void main(){
  final delfin = Delfin();
  delfin.nadar();
  final murcielago = Murcielago();
  murcielago.volar();
  murcielago.caminar();
}

// CLASS PRINCIPAL
abstract class Animal {}

// CLASS HEREDIRATIAS
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

// MIXINS
mixin Volador {
  void volar() => print('Estoy volando');
}
mixin Nadador {
  void nadar() => print('Estoy Nadando');
}
mixin Caminante {
  void caminar() => print('Estoy Caminando');
}

// Mamimefros
class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}
class Pato extends Ave with Caminante, Volador, Nadador {}