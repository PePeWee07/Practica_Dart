// ============================================================
//  EJERCICIO 01 — Clases, Herencia (extends), Contratos
//                 (implements) y Mixins (with)
//  Tema: Mini-RPG ⚔️🐉
// ============================================================
//
//  CÓMO TRABAJAR ESTE ARCHIVO:
//   1. Lee de ARRIBA hacia ABAJO, parte por parte.
//   2. Donde diga "TODO" tienes que escribir código TÚ.
//   3. ⚠️ OJO: el archivo NO compila hasta que completes los TODO.
//      Eso es NORMAL. Ve completando y probando parte por parte.
//   4. Para ejecutarlo, abre la terminal en esta carpeta y escribe:
//          dart run 11_ejercicio_01.dart
//   5. Tu meta: que la salida sea IGUAL al "OUTPUT ESPERADO"
//      que está hasta el final del archivo.
//
//  💡 Si te trabas, abre 09_abstract_class.dart: ahí tienes el
//     mismo patrón (molde abstracto + extends + implements).
//     Y el 00_GLOSARIO.md para las palabras raras.
// ============================================================

void main() {
  print('=== PARTE 2: Herencia (extends) + super ===');
  final conan = Guerrero(nombre: 'Conan', vida: 120);
  conan.atacar();
  print('${conan.nombre} -> vida: ${conan.vida}\n');

  final gandalf = Mago(nombre: 'Gandalf', vida: 80, mana: 0);
  gandalf.atacar();
  print('${gandalf.nombre} -> mana: ${gandalf.mana}\n');

  print('=== PARTE 3: Mixins (with) ===');
  gandalf.curar(); // <- habilidad que viene del mixin Curador
  final hada = Hada(nombre: 'Navi', vida: 30);
  hada.volar(); // <- mixin Volador
  hada.curar(); // <- mixin Curador

  print('\n=== PARTE 4: Contratos (implements) ===');
  final dragon = Dragon();
  dragon.atacar();
  print(dragon.describir());
  print('Sueltas ${dragon.darOro()} de oro 🪙');

  print('\n=== PARTE 5: EXTRAS ===');
  final caballero = Caballero(nombre: 'Tulio', vida: 150);
  caballero.atacar();
  caballero.volar();
  print('${caballero.nombre} -> vida: ${caballero.vida}\n');

  final sirenita = Sirena(name: 'Ariel', hp: 70);
  sirenita.Nadar();
  sirenita.atacar();
  sirenita.curar();
  print('${sirenita.nombre} -> vida: ${sirenita.vida}\n');

}

// ------------------------------------------------------------
//  PARTE 1 — EL MOLDE BASE (clase abstracta)
// ------------------------------------------------------------
//  TODO: crea una clase ABSTRACTA llamada "Personaje" con:
//     - un atributo  String nombre
//     - un atributo  int vida
//     - un constructor que reciba ambos como REQUIRED
//       (pista: usa this.nombre y this.vida)
//     - un MÉTODO ABSTRACTO (sin cuerpo, termina en ;):
//           void atacar();
//
//  Recuerda: "abstract" = molde incompleto, nadie lo instancia
//  directo; solo sirve para que otros hereden de él.

// TODO: escribe aquí la clase abstracta Personaje
abstract class Personaje {
  String nombre;
  int vida;

  Personaje({required this.nombre, required this.vida});

  void atacar();
}

// ------------------------------------------------------------
//  PARTE 2 — HIJOS que heredan con EXTENDS (+ super)
// ------------------------------------------------------------
//  TODO 2.A: crea  class Guerrero extends Personaje
//     - su constructor recibe {required String nombre, required int vida}
//       y se los pasa al padre con:  : super(nombre: ..., vida: ...)
//     - con @override implementa atacar():
//           print('🗡️ $nombre ataca con su espada');
//
//  TODO 2.B: crea  class Mago extends Personaje
//     - tiene un atributo EXTRA:  int mana
//     - su constructor recibe nombre, vida y mana; pasa nombre y vida
//       al padre con super(...) y guarda el mana en this.mana
//     - con @override implementa atacar():
//           print('🔥 $nombre lanza una bola de fuego');
//           mana -= 10;   // gastar maná al atacar

// TODO: escribe aquí Guerrero y Mago
class Guerrero extends Personaje {
  Guerrero( {required String nombre, required int vida} ): super(nombre: nombre, vida: vida);
  
  @override
  void atacar() {
    print('🗡️ $nombre ataca con su espada');
  }
}

class Mago extends Personaje with Curador {
  int mana;

  Mago({required String nombre, required int vida, required this.mana})
      : super(nombre: nombre, vida: vida);
      
    @override
    void atacar() {
      if (mana >= 10) {
        print('🔥 $nombre lanza una bola de fuego');
        mana -= 10; // Segunda acción permitida gracias a las llaves {}
      } else {
        print('Me he quedado sin Maná');
      }
    }

}

// ------------------------------------------------------------
//  PARTE 3 — MIXINS (kits de poderes que se enchufan con WITH)
// ------------------------------------------------------------
//  TODO 3.A: crea un  mixin Volador  con el método:
//           void volar() => print('🪽 $nombre está volando');
//     (pista: para poder usar $nombre, este mixin necesita estar
//      "amarrado" a Personaje. Escribe:  mixin Volador on Personaje { ... }
//      Eso significa "este kit SOLO se pega a Personaje o sus hijos".)
//
//  TODO 3.B: crea un  mixin Curador  con el método:
//           void curar() => print('✨ $nombre se cura +10 de vida');
//     (también "on Personaje" para poder leer $nombre)
//
//  TODO 3.C: enchufa los mixins:
//     - al Mago, agrégale  with Curador   (cambia su declaración a:
//           class Mago extends Personaje with Curador {  ...  )
//     - crea  class Hada extends Personaje with Volador, Curador
//           su constructor recibe nombre y vida y los pasa con super(...)
//           con @override implementa atacar():
//               print('🧚 $nombre lanza polvo de hada');

// TODO: escribe aquí los mixins Volador y Curador, y la clase Hada
//       (y acuérdate de añadir "with Curador" al Mago de la Parte 2)

mixin Volador on Personaje{
  void volar()=>{print('🪽  $nombre está volando')};
}

mixin Curador on Personaje {
  void curar() => print('✨ $nombre se cura +10 de vida');
}

class Hada extends Personaje with Volador, Curador {
  Hada({required nombre, required int vida})
      : super(nombre: nombre, vida: vida);

  @override
  void atacar() {
    print('🧚 $nombre lanza polvo de hada');
  }
  
}

// ------------------------------------------------------------
//  PARTE 4 — CONTRATOS con IMPLEMENTS
// ------------------------------------------------------------
//  Aquí va lo importante: el Dragón NO es hijo de nadie.
//  Va a FIRMAR DOS CONTRATOS (implements) y, por eso, tiene que
//  escribir TODO desde cero (no hay super, no hereda nada hecho).
//
//  Primero, este contrato extra (ya te lo dejo escrito):
abstract class Botin {
  int darOro();
}

//  TODO: crea  class Dragon implements Personaje, Botin
//     Como FIRMAS los contratos, estás OBLIGADO a definir:
//       @override String nombre = 'Smaug';
//       @override int vida = 500;
//       @override void atacar()  -> print('🐉 El dragón escupe fuego a todos');
//       @override int darOro()   -> return 1000;
//     Y además, un método propio:
//       String describir() =>
//           'Soy un dragón ancestral, nombre: $nombre, vida: $vida';

// TODO: escribe aquí la clase Dragon
class Dragon implements Personaje, Botin {
  @override
  String nombre = 'Smaug';
  @override
  int vida = 500;

  // Dragon();

  @override
  void atacar() => print('🐉 El dragón escupe fuego a todos');
  @override
  int darOro() => 1000;

  String describir() => 'Soy un dragón ancestral, nombre: $nombre, vida: $vida';
}

class Caballero extends Personaje with Volador {

  Caballero({required nombre, required vida}): super (nombre: nombre, vida: vida);

  @override
  void volar() => {print('Móntando en un grifo 🦅')};
  
  @override
  void atacar() {
    print('Blande sus grandes espadas ⚔️');
  }
}

mixin Nadador on Personaje {
  void Nadar() => {print('🔱 $nombre está Nadando')};
}

class Sirena extends Personaje with Nadador, Curador {

  Sirena({required name, required hp}): super(nombre: name, vida: hp);
  
  @override
  void atacar() {
    print("$nombre ataca por el agua");
  }
}

// ============================================================
//  ⭐ RETOS EXTRA (opcionales, cuando termines lo de arriba):
//   1. Crea un  Caballero  que sea Guerrero PERO que también
//      pueda volar (móntalo en un grifo 🦅). ¿extends o with?
//   2. Haz que atacar() del Mago, si el mana llega a 0, imprima
//      'sin maná, no puede atacar' en vez de lanzar fuego.
//   3. Crea un mixin  Nadador  y un personaje  Sirena  que nade y cure.
// ============================================================

// ============================================================
//  ✅ OUTPUT ESPERADO (así debe verse al correrlo terminado):
//
//  === PARTE 2: Herencia (extends) + super ===
//  🗡️ Conan ataca con su espada
//  Conan -> vida: 120
//
//  🔥 Gandalf lanza una bola de fuego
//  Gandalf -> mana: 40
//
//  === PARTE 3: Mixins (with) ===
//  ✨ Gandalf se cura +10 de vida
//  🪽 Navi está volando
//  ✨ Navi se cura +10 de vida
//
//  === PARTE 4: Contratos (implements) ===
//  🐉 El dragón escupe fuego a todos
//  Soy un dragón ancestral, nombre: Smaug, vida: 500
//  Sueltas 1000 de oro 🪙
// ============================================================


