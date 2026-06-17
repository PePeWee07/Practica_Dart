void main() {

  ejemploDIP();

}

// DIP
// Principio de inversión de dependencias
// Las clases de alto nivel no deben depender de las clases de bajo nivel. Ambas deben depender de abstracciones.
// Las abstracciones no deben depender de los detalles. Los detalles deben depender de las abstracciones.
void ejemploDIP(){
  final pikachu = Pikachu();
  pikachu.ataqueRapido();
  pikachu.ataqueElectrico(pikachu.nombre);

  int i = 0;
  pikachu.obtenerNombre().listen((event) { 
    print('${i+=1} Evolucion: $event');
  });

  try{
    pikachu.DamngeAttack().then((value) => print('Tu ${pikachu.nombre} hace un daño: $value'));
  } catch(e){
    print('Error: $e');
  }
}

class Pikachu extends Pokemon with Electrico{
  Pikachu():super(nombre: 'Pikachu', tipo: 'Electrico');

  @override
  void ataqueRapido() {
    print('$nombre utliza ataque rapido');
  }

  Stream<String> obtenerNombre() {
    return Stream.fromIterable(['Pikachu','Raichu','Pichu']);	
  }

  Future<int> DamngeAttack() async {
    return Future.delayed(Duration(seconds: 2), () {
      return 100;
    });
  }
}




//Clase abstracta
abstract class Pokemon{
  String nombre;
  String tipo;

  Pokemon({required this.nombre, required this.tipo});

  void ataqueRapido();
}

//Mixins
mixin Electrico {
  void ataqueElectrico(String name){
    print('Tu $name utliza ataque electrico');
  }
}
mixin Agua {
  void ataqueAgua(){
    print('Ataque de agua');
  }
}
mixin Fuego {
  void ataqueFuego(){
    print('Ataque de fuego');
  }
}