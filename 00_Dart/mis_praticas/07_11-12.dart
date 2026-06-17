import 'dart:math';

void main() {
  
  final habilidadCura = ['Rejuvenecer'];
  
  final habilidadesAtaque = ['Llamarada', 'Ventisca'];
  
  final excalibur = Hechicero(
    nombre: 'Excalibur',
    vida: 30,
    habilidades: [habilidadesAtaque, habilidadCura],
    resistencia: 10,
    dano: 100,
    tipo: PersonajeTipo.mago,
    curar: 35
  );

  
  
  // Mostrar el ataque y la curación
  excalibur.sanar(excalibur.nombre, habilidadCura[0], excalibur.curar);
  excalibur.hechizo(excalibur.nombre, habilidadesAtaque[Random().nextInt(excalibur.habilidades.length)], excalibur.dano);
}
  


//TIPO DE PERSONAJES
enum PersonajeTipo { curador, mago, paladin }

//SUPER CLASS
abstract class Personaje {
  String nombre;
  int vida;
  List<List<String>> habilidades;
  double resistencia;
  int dano;
  int curar;
  PersonajeTipo tipo;
  
  
  Personaje({
    required this.nombre,
    required this.vida,
    required this.habilidades,
    required this.resistencia,
    required this.dano,
    required this.tipo,
    required this.curar
    });
  
}

//MIXINS
mixin Atacante{
  void atacar(String nombre, String habilidades, int dano) {
    print('!${nombre}, Ataca con ${habilidades}¡, provoca un daño de ${dano}💥');
  }
}

mixin Curador{
  void sanar(String nombre, String habilidad, int cura) {
    print('!${nombre}, Cura con ${habilidad}¡, y restablece ${cura} puntos de vida 💚');
  }
}

mixin Magia{
  void hechizo(String nombre, String habilidades, int dano) {
    print('!${nombre}, Ataca con ${habilidades}¡, provoca un daño magico de ${dano} 🪄');
  }
}


//Clases de personajes que pueden atacar
class Paladin extends Personaje with Atacante {
  
  Paladin({
    required super.nombre,
    required super.vida,
    required super.habilidades,
    required super.resistencia,
    required super.dano,
    required super.tipo,
    super.curar = 0
  });    
}


//Clases de personajes que pueden curar
class Curandero extends Personaje with Curador {
  
  Curandero({
    required super.nombre,
    required super.vida,
    required super.habilidades,
    required super.resistencia,
    super.dano = 0,
    required super.tipo,
    required curar
  }): super(curar:curar);
}


//Clases de personajes que pueden echizos y atacar
class Hechicero extends Personaje with Magia, Curador {
  
  Hechicero({
    required super.nombre,
    required super.vida,
    required super.habilidades,
    required super.resistencia,
    required super.dano,
    required super.tipo,
    required super.curar
  }); 
  
}


