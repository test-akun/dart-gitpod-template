class Person {
  Family operator +(Person other) {
    return Family(people: [this, other]);
  }
}

class Family {
  final List<Person> people;
  Family({required this.people});
}
