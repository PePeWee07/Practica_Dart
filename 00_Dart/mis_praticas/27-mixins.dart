/*
  Imagina que estás diseñando un sistema para un juego de superhéroes. 
  Cada superhéroe puede tener diferentes habilidades, como volar, nadar, 
  o correr. También deben poder ejecutar misiones que requieren una 
  combinación de estas habilidades.

  Funciones:
    - Misiones
    - Entrenar
    - Descansar

  SuperPoderes:
    - Volar
    - Nadar
    - Correr
  
  SuperHeroes:
    - Superman
    - Flash
    - Batman
*/
void main() {
  final superman = Superman();
  final flash = Flash();
  final batman = Batman();

  executeMission(superman);
  executeMission(flash);
  executeMission(batman);

  // Ejemplo de entrenamiento y descanso
  superman.entrenar();
  flash.descansar();
  batman.entrenar();
}

//! Dip
void executeMission(SuperHeroe superHeroe) {
  superHeroe.mision();
}

// SUPER CLASE
abstract class SuperHeroe {
  String nombre;
  int fuerza;
  int resistencia;

  SuperHeroe({required this.nombre, required this.fuerza, required this.resistencia});

  void mision();
  void entrenar(); //Aumentar fuerza o resistencia
  void descansar(); //Recuperar resistencia
}

// CLASS
abstract class SuperHeroeConAlas extends SuperHeroe {
  SuperHeroeConAlas({required super.nombre, required super.fuerza, required super.resistencia});
}

// MIXINS
mixin Volar on SuperHeroeConAlas {
  void volar() => print('Estoy volando');
}
mixin Nadar {
  void nadar() => print('Estoy nadando');
}
mixin Correr {
  void correr() => print('Estoy corriendo');
}

// SUPER HEROES CLASS
class Superman extends SuperHeroeConAlas with Volar, Nadar, Correr {

  Superman() 
  : super(
      nombre: 'Superman', 
      fuerza: 100, 
      resistencia: 100
    );

  @override
  void mision() {
    volar();
    nadar();
    correr();
    print('$nombre está salvando el mundo con todas sus habilidades!');
  }

  @override
  void entrenar() {
    fuerza += 10;
    print('$nombre se ha entrenado y ahora tiene una fuerza de $fuerza.');
  }

  @override
  void descansar() {
    resistencia += 20;
    print('$nombre ha descansado y ahora tiene una resistencia de $resistencia.');
  }
}

class Flash extends SuperHeroe with Correr {
  Flash()
      : super(
          nombre: 'Flash',
          fuerza: 80,
          resistencia: 90,
        );

  @override
  void mision() {
    correr();
    print('$nombre está usando su súper velocidad para salvar el mundo!');
  }

  @override
  void entrenar() {
    fuerza += 5;
    print('$nombre ha entrenado y ahora tiene una fuerza de $fuerza.');
  }

  @override
  void descansar() {
    resistencia += 15;
    print('$nombre ha descansado y ahora tiene una resistencia de $resistencia.');
  }
}

class Batman extends SuperHeroe with Nadar, Correr {
  Batman()
      : super(
          nombre: 'Batman',
          fuerza: 70,
          resistencia: 80,
        );

  @override
  void mision() {
    correr();
    nadar();
    print('$nombre está usando sus habilidades para salvar Gotham!');
  }

  @override
  void entrenar() {
    fuerza += 7;
    print('$nombre ha entrenado y ahora tiene una fuerza de $fuerza.');
  }

  @override
  void descansar() {
    resistencia += 10;
    print('$nombre ha descansado y ahora tiene una resistencia de $resistencia.');
  }
}