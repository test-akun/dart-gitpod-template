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

class RubberDuck extends Duck {
  @override
  void eat() {
    // do nothing
  }
}