void main() {
  
  //VARIABLES
  String myName = "Jose";

  const zodiaco = "Tauro";

  final edad = calcularEdad();
  
  final List<String> hobits = ['futbol', 'videojuegos'];
  
  final Map<String, dynamic> caracteristicas = { 
    'Fisico': 100,
    'Inteligencias': 100,
    'Adicciones': 'No',
    'Fortaleza': 'Todas',
    'Debilidad': 'Ninguna'
  };
  
  final Map<String, dynamic> obligaciones = new Map();
   
  obligaciones['Primera prioridad'] = 'comer';
  
  final numeros = [21,7,3,11,1];
  
  final numerosFavoritos = numeros.where ( (int num) {
    return num >= 3;
  });
  
  
  //PRINTS
  print("Holis soy ${myName} , mi zodiaco es $zodiaco y tengo $edad años");
  print("Me gusta: ${hobits.toSet()}");
  print("Mis caracteristicas: ${caracteristicas}");
  print("Mis obligaciones: ${obligaciones}");
  
  caracteristicas.forEach( (key, value) {
    print("$key : $value");
  });
  
  print('Mis numeros Favoritos: $numerosFavoritos');
  print('Tambien puedo sumar:  1+1= ${suma(1,1)}');
  print('Mis apellidos son: ${apellidos(apellidoPaterno:'Román', apellidoMaterno:'Valdiviezo')}');
  
   final moto = MimotoFavorita(modelo:"YZF-R6", marca:"Yamaha", cilindrada:600);
  print("Mi moto favorita es: ${moto.laMoto()}");
  

final gengar = Gengar(
  nombre:"Guengar",
  generacion: "primera",
  habilidades: ["Bola sombra", "lenguetazo"]
);
final pikachu = Pikachu(
  nombre:"Pikachu",
  generacion: "primera",
  habilidades: ["Rayo", "Impactrueno"]
);


print("Mis Pokemones favoritos es: ${gengar.nombre} y ${pikachu.nombre}");
gengar.bolaSombra();
gengar.lenguetazo();
  
}



//FUNCIONES
int calcularEdad() => 23;

int suma(int a, int b, [int c = 0]) {
  return a + b + c;
}

String apellidos ({required String apellidoPaterno, required String apellidoMaterno}) => "$apellidoPaterno $apellidoMaterno";

//ENUM
enum TipoMoto {SCOOTER, MOTOCROSS, SUPERDEPORTIVAS}

// Sobrescribe el método toString() para que solo imprima el nombre del enum
extension TipoMotoToString on TipoMoto {
  String get name => {
    TipoMoto.SCOOTER: 'SCOOTER',
    TipoMoto.MOTOCROSS: 'MOTOCROSS',
    TipoMoto.SUPERDEPORTIVAS: 'SUPERDEPORTIVAS',
  }[this] ?? '';
}

//CLASES
abstract class Moto {
  
  String modelo;
  String marca;
  int cilindrada;
  TipoMoto tipo;
  
  Moto({required this.modelo,
        required this.marca,
        required this.cilindrada,
        required this.tipo
       });
  
  String laMoto();
}

class MimotoFavorita extends Moto {
  
  MimotoFavorita({
    required super.modelo,
    required super.marca,
    required super.cilindrada,
    super.tipo = TipoMoto.SUPERDEPORTIVAS
  });
  
  @override
  String laMoto() {
    return 
    """
    --Moto--
    Modelo: $modelo,
    Marca: $marca,
    Cilindrada: $cilindrada,
    Tipo: ${tipo.name}
    """;
  }
}

enum TipoPokemon {Electrico, Fuego, Agua, Fantasma}

abstract class Pokemon {
  String nombre;
  TipoPokemon tipo;
  String generacion;
  List<String> habilidades;
    
    Pokemon({
      required this.nombre,
      required this.tipo,
      required this.generacion,
      required this.habilidades
    });
}

class Gengar extends Pokemon with Ataque {
  Gengar({
    required super.nombre,
    required super.generacion,
    required super.habilidades,
    super.tipo = TipoPokemon.Fantasma
  });
}

class Pikachu extends Pokemon with Ataque {
  Pikachu({
    required super.nombre,
    required super.generacion,
    required super.habilidades,
    super.tipo = TipoPokemon.Electrico
  });
}

//MIXINs
mixin Ataque {
  void bolaSombra(){
    print("Mi pokemon utiliza Bola sombra y provoca 100 de daño 💥");
  }
  void lenguetazo(){
    print("Mi pokemon utiliza Lenguetazo y provoca 35 de daño 💥");
  }
}

mixin Defensa {
  void escudoCosmico(){
    print("Mi pokemon tiene probalidad del 70% de bloquear 🛡");
  }
  void escudoCristal(){
    print("Mi pokemon tiene probalidad del 15% de bloquear 🛡");
  }
}


mixin Curar {
  void rejuvenecer() {
    print("Mi pokemon restaura 50 de vida 💚");
  }
}













