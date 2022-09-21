class Consumption {
  final double electricity;
  final double gas;
  final double water;

  Consumption({
    required this.electricity,
    required this.gas,
    required this.water,
  });

  Consumption operator *(double multiplier) => Consumption(
        electricity: electricity * multiplier,
        gas: gas * multiplier,
        water: water * multiplier,
      );
  Consumption operator +(Consumption other) => Consumption(
        electricity: electricity + other.electricity,
        gas: gas + other.gas,
        water: water + other.water,
      );

  @override
  String toString() {
    return '$electricity, $gas, $water';
  }
}
