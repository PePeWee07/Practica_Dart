void main() {
  
  //Utilizar Funciones 
  print('Suma: ${suma(1, 2, 3)}');
  
  print('Suma de decimales: ${suma2(0.5, 5.75)}');
  
  print('Multiplicacion: ${multiplicacion(a:8)}');
  
  
  
  //Crear un onjeto a partir de una clase
  final Persona jose = Persona(nombre:'José', genero: 'M');
  print("Persona: $jose");
  
  
  
  //Agregar un objeto a un MAP
  final Map<String, dynamic> mapPersona = {
    "Datos": jose,
    "ID" : 1,
  };
  print(mapPersona);
  
  
  
  //Ejemplo de objeto de respuesta HTTP
  final Map<String, dynamic> carro = {
    "marca": "Toyota",
    "modelo": "Corolla",
    "año": 2022,
    "color": "Negro",
    "placa": "ABC123",
    "precio": 25000
  };
  print('Carro: $carro');
  
  //Pasamos objeto HTTP a mi contrustor de a clase
  final Carro automovil = Carro.fromJson(carro);
  print(automovil);
  
}


//Funciones
int suma(int a, int b, int c) {
    return (a + b + c);
}

double suma2(double a, double b, [double c = 0]) {
  return (a + b + c);
}

int multiplicacion({required int a, int b = 5}){
  return a * b;
}


//Clases
class Persona {
  String nombre;
  String apellido;
  int edad;
  String genero;
  
  Persona ({
    required this.nombre,
    this.apellido = 'Sin Apellido',
    this.edad = 0,
    required this.genero
    });
  
  @override
  String toString(){
    return '$nombre,$apellido, $edad, $genero';
  }
  
}

class Carro {
  String marca;
  String modelo;
  int anio;
  String color;
  String placa;
  int precio;
  
  Carro.fromJson( Map<String, dynamic> json ) :
    marca = json['marca'] ?? 'Marca no econtrada',
    modelo = json['modelo'] ?? 'Modelo no econtrado',
    anio = json['año'] ?? 'Año no econtrado',
    color = json['color'] ?? 'Color no econtrado',
    placa = json['placa'] ?? 'Placa no econtrado',
    precio = json['precio'] ?? 'Precio no econtrado';
    
  @override
  String toString() {
    return 
      """
      ----AUTOMOVIL---
      marca:  $marca
      modelo: $modelo
      año:    $anio
      color:  $color
      placa:  $placa
      precio: $precio
      ----------------
      """;
  }
}