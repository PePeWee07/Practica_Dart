void main() {
  final windPlant = WindPlant(initailEnergy: 100);
  final nuclearplant = NuclearPlant(initailEnergy: 1000);

  print(windPlant);
  print(nuclearplant);
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum Plantype { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  Plantype type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initailEnergy})
      : super(energyLeft: initailEnergy, type: Plantype.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  Plantype type = Plantype.nuclear;

  NuclearPlant({required double initailEnergy}) : energyLeft = initailEnergy;

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
