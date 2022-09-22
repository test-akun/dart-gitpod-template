// import 'package:operation_overloading/use_case/person/person.dart';
import 'package:operation_overloading/future_or_demo.dart';
import 'package:operation_overloading/use_case/hero/hero.dart';
import 'package:operation_overloading/use_case/utilities_consumption/consumption.dart';
import 'package:operation_overloading/use_case/utilities_consumption/meter_reading.dart';

Future<void> main(List<String> arguments) async {
  // print('Hello world!');

  // var p1 = Person('Bob', 'Smith');
  // var p2 = Person('Bob', 'Smith');
  // var p3 = 'not a person';
  // print(p1.hashCode == p2.hashCode);
  // print(p1 == p2);
  // print(p1 != p3);

  MeterReading reading = MeterReading(electricity: 20, gas: 10, water: 12);
  MeterReading previousReading = MeterReading(electricity: 5, gas: 7, water: 3);
  Consumption one = reading - previousReading;
  Consumption two = Consumption(electricity: 5, gas: 7, water: 11);

  Consumption result = (one + two) * 0.5;

  print("Result is $result");

  Hero a = Hero(12);
  Hero b = Hero(10);

  print((a + 'dada').power);
  print(b > a);

  User user = User();
  UserManager userManagerFirebase = UserManager(FirebaseStorage());
  UserManager userManagerLocal = UserManager(LocalStorage());

  print(await userManagerFirebase.getUserAge(user));
  print(await userManagerLocal.getUserAge(user));
}
