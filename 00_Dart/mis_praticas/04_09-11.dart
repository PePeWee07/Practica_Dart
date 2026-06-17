//Modelado vehiculos


void main() {
  // Crear un coche
  final coche = Carro(marca: 'Toyota', modelo: 'Corolla');
  print('Descripción del coche: ${coche.getDescripcion()}');
  
  // Crear una motocicleta
  final motocicleta = Motocicleta(marca: 'Honda', modelo: 'CBR');
  print('Descripción de la motocicleta: ${motocicleta.getDescripcion()}');
  
  // Realizar mantenimiento a un coche
  final mantenimientoCoche = MantenimeintoCarro(tipoMantenimiento: 'Cambio de aceite');
  mantenimientoCoche.realizarMantenimiento();
}

abstract class Vehiculo {
  
  String _marca;
  String _modelo;
  
  Vehiculo({
    required String marca,
    required String modelo})
    : _marca = marca,
      _modelo = modelo;
  
  //Descripcion del vehiculo
  String getDescripcion() => 'Marca: $_marca, Modelo: $_modelo';
}

//Carro
class Carro extends Vehiculo {
  
  Carro({
    required super.marca,
    required super.modelo
  });
  
}

//Coche = Carro, diferente forma de utilizar
class Coche extends Vehiculo {
  // Constructor
  Coche({required String marca, required String modelo})
      : super(marca: marca, modelo: modelo);
}

//Motocilceta
class Motocicleta extends Vehiculo {
  
  Motocicleta({
    required super.marca,
    required super.modelo
  });
  
}

//Para el mantenimiento
abstract class Mantenimiento {
  void realizarMantenimiento();
}

class MantenimeintoCarro implements Mantenimiento {
  final String _tipoMantenimiento;
  
  MantenimeintoCarro({
    required String tipoMantenimiento
  }):_tipoMantenimiento = tipoMantenimiento;
  
  @override
  void realizarMantenimiento() {
    print('Realizando mantenimiento de tipo $_tipoMantenimiento');
  }
}










