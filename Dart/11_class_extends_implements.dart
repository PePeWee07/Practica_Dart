void main () {
  
  final windPlant = WindPlant(initialEnergy: 9);
  final nuclearPlant = NuclearPlant( energyLeft: 2 );
  
  
  print('Wind: ${chargePhone( windPlant )}');
  print('Nuclear: ${chargePhone( nuclearPlant )}');
  
}


chargePhone( EnergyPlant plant ) {
  if ( plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }
}




enum Plantype { nuclear, wind, water }

abstract class EnergyPlant {
  
  double energyLeft;
  final Plantype type; // nuclear, wind, water
  
  EnergyPlant( { 
    required this.energyLeft,
    required this.type
               } );
  
  void consumeEnergy( double amount );
}



// extends
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



// implements
class NuclearPlant implements EnergyPlant{
  

  double energyLeft;
  
  final Plantype type = Plantype.nuclear;
  
  NuclearPlant({ required this.energyLeft});
  
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
}











