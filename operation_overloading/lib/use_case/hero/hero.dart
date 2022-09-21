class Hero {
  final int power;

  Hero(this.power);

  Hero operator +(Object other) {
    // return Hero(power + other.power);
    if (other is Hero) return Hero(power + other.power);
    if (other is int) return Hero(power + other);
    return this;
  }

  bool operator >(Object other) => other is Hero && power > other.power;

  @override
  bool operator ==(Object other) {
    return other is Hero &&
        other.runtimeType == runtimeType &&
        other.power == power;
  }

  @override
  int get hashCode => power.hashCode;
}
