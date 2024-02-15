
void main() {
  List<String> carrerasUniversidadUcacue = ['Ingeniería', 'Medicina', 'Derecho'];
  final UCACUE universidadUcacue = 
    UCACUE(nombre            : 'Universidad Catolica de Cuenca', 
           anioFundacion     : 1960,
           carreras          : carrerasUniversidadUcacue,
           numeroEstudiantes : 30000);
  universidadUcacue.obtenerInformacion();
  
  print('\n');
  
  List<String> carrerasUniversidadEstatal = ['Fotografia', 'Arte', 'Psicologia', 'Filosofia'];
  final Estatal universidadEstatal = 
    Estatal(nombre            : 'Universidad de Cuenca', 
           anioFundacion     : 1730,
           carreras          : carrerasUniversidadEstatal,
           numeroEstudiantes : 80000,
           cupos             : 5000);
  universidadEstatal.obtenerInformacion();
  
  print('\n');
  
   List<String> carrerasUniversidadSalesiana = ['Cine', 'Arte'];
  final Salesiana universidadSalesiana = 
    Salesiana(nombre            : 'Universidad de Salesiana', 
           anioFundacion     : 1900,
           carreras          : carrerasUniversidadSalesiana,
           numeroEstudiantes : 50000);
  universidadSalesiana.obtenerInformacion();
  
}

abstract class Universidad {
  
  String nombre;
  int anioFundacion;
  List<String> carreras;
  int numeroEstudiantes;
  
  Universidad({
    required this.nombre,
    required this.anioFundacion,
    required this.carreras,
    required this.numeroEstudiantes
    });
  
   void obtenerInformacion() {
    print('Nombre de la universidad: $nombre');
    print('Año de fundación        : $anioFundacion');
    //print('Numero de Estudiantes   : $numeroEstudiantes');
    print('---- Carreras ofrecidas ----');
    for (var carrera in carreras) {
      print(' - $carrera');
    }
  }
  
}

class UCACUE extends Universidad {
  
  UCACUE({
    required super.nombre,
    required super.anioFundacion,
    required super.carreras,
    required super.numeroEstudiantes
    });
  
  @override
  void obtenerInformacion() {
    super.obtenerInformacion();
    print('Numero de Estudiantes   : $numeroEstudiantes');
  }
  
}

class Estatal extends Universidad {
  
  int _cupos;
  
  Estatal({
    required super.nombre,
    required super.anioFundacion,
    required super.carreras,
    required super.numeroEstudiantes,
    required cupos
    }): _cupos = cupos;
  
  @override
  void obtenerInformacion() {
    super.obtenerInformacion();
    print('Numero de Estudiantes   : $numeroEstudiantes');
    print('Cupos disponibles       : $_cupos');
  }
  
}

class Salesiana implements Universidad {
  
  @override
  String nombre;
  
  @override
  int anioFundacion;
  
  @override
  List<String> carreras;
  
  @override
  int numeroEstudiantes;
  
  Salesiana({
    required this.nombre,
    required this.anioFundacion,
    required this.carreras,
    required this.numeroEstudiantes,
  });
  
  @override
  void obtenerInformacion() {
    print('Nombre de la universidad: $nombre');
    print('Año de fundación        : $anioFundacion');
    print('Número de Estudiantes   : $numeroEstudiantes');
    print('---- Carreras ofrecidas ----');
    for (var carrera in carreras) {
      print(' - $carrera');
    }
  }
  
}

class Panamericana extends Universidad {
  
  Panamericana.personalizado({
    required super.nombre,
    required super.anioFundacion,
    required super.carreras,
    required super.numeroEstudiantes
    });
  
}


