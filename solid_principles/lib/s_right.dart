/// RIGHT implementation for single responsibility
///
///

class Car {
  AC? airConditioner;
  Radio? radio;
  
  void turnOnCar() {
    // ..
  }
  void turnOffCar() {
    // ..
  }
}

class AC {
  void turnOffAC() {
    // ..
  }
  void turnOnAC() {
    // ..
  }
}

class Radio {
  void playMusic() {
    // ..
  }
}
