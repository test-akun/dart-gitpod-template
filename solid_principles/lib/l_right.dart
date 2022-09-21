//// BAD implementation of Liskov principle
///
///

class Duck {
  void swim() {
    // ..
  }

  void quack() {
    // ..
  }

  void eat() {
    // ..
  }
}

class WildDuck extends Duck {
  @override
  void eat() {
    // do wild duck way of eating
  }
}
