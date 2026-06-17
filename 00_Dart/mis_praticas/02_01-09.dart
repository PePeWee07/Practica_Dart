void main() {
  
  //Ejemplo de objeto de respuesta HTTP
  final Map<String, dynamic> carro = {
    "marca": "Toyota",
    "modelo": "Corolla",
    "anio": 2022,
    "color": "Negro",
    "placa": "ABC123",
    "precio": 25000
  };
  
  
  //Utlizacion de clase
  final Faces automovil = Faces.fromJson(carro);
  print(automovil);
  
  
}

class Faces {
    String marca;
    String modelo;
    int anio;
    String color;
    String placa;
    int precio;

    Faces({
        required this.marca,
        required this.modelo,
        required this.anio,
        required this.color,
        required this.placa,
        required this.precio,
    });

    factory Faces.fromJson(Map<String, dynamic> json) => Faces(
        marca: json["marca"] ?? 'No data found',
        modelo: json["modelo"] ?? 'No data found',
        anio: json["anio"] ?? 0,
        color: json["color"] ?? 'No data found',
        placa: json["placa"] ?? 'No data found',
        precio: json["precio"] ?? 0,
    );

    //Para objetos convertidos de cadena a Json
    Map<String, dynamic> toJson() => {
        "marca": marca,
        "modelo": modelo,
        "anio": anio,
        "color": color,
        "placa": placa,
        "precio": precio,
    };
  
  @override
  String toString() {
    return 'Marca: $marca, Modelo: $modelo, Año: $anio, Color: $color, Placa: $placa, Precio: $precio';
  }
}