void main () {

  final WindPlant windPlant = WindPlant(initialEnergy: 100);

  print('Wind: ${chargePhone( windPlant )}');
}

//! Principio de inversión de dependencias (DIP)
double chargePhone( EnergyPlant plant){
  if ( plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}


// CLASS
enum Plantype { nuclear, wind, water }
abstract class EnergyPlant {

  double energyLeft;
  final Plantype type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy(double amount);
}

// EXTENDS
class WindPlant extends EnergyPlant{

  WindPlant({ required double initialEnergy })
    : super(
      energyLeft: initialEnergy,
      type : Plantype.wind
    );

    @override
    void consumeEnergy( double amount ) {
      energyLeft -= amount;
    }
}