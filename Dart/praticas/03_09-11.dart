void main() {
  
  final nuevaMacota = Gato(id:0, nombre:'Nino', edad:1, sexo:'M');
  
  print('Veamos: ${pabellonGatos(nuevaMacota)}');
  
} 


pabellonGatos( Mascota mascota ){
  if(mascota.tipo != MascotaTipo.gato){
    throw Exception('Otros tipos de animales no pueden ingresar a este pabellon');
  }
  else {
    return mascota;
  }
}


enum MascotaTipo { perro, gato, loro }

abstract class Mascota {
  
  int id;
  String nombre;
  int edad;
  String sexo;
  MascotaTipo tipo;
  
  Mascota({
    required this.id,
    required this.nombre,
    required this.edad,
    required this.sexo,
    required this.tipo,
    });
   
}

class Gato extends Mascota {
  
  Gato ({
    required  super.id,
    required  super.nombre,
    required  super.edad,
    required  super.sexo,
    super.tipo = MascotaTipo.gato
  });
  
  //Tmb podemos usar asi
// Gato({
//     required int id,
//     required String nombre,
//     required int edad,
//     required String sexo,
//   }) : super(
//           id: id,
//           nombre: nombre,
//           edad: edad,
//           sexo: sexo,
//           tipo: MascotaTipo.gato, // Aquí establecemos directamente el tipo como MascotaTipo.gato
//         );
  
  @override
  String toString() {
    return 
    """
    --MASACUOTA--
    Identificacion: $id,
    Nombre: $nombre,
    Edad: $edad,
    Sexo: $sexo
    Tipo: $tipo
    """;
  }
  
}
