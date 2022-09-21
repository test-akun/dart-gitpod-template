import 'consumption.dart';

class MeterReading {
  final double electricity;
  final double gas;
  final double water;

  MeterReading({
    required this.electricity,
    required this.gas,
    required this.water,
  });

  Consumption operator -(MeterReading other) => Consumption(
      electricity: (electricity - other.electricity).abs(),
      gas: (gas - other.gas).abs(),
      water: (water - other.water).abs());
}
