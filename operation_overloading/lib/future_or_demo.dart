import 'dart:async';

class User {
  // User related thing
  int age = 0;
}

class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) => dataStorage.saveUser(user);

  FutureOr<int> getUserAge(User user) async =>
      await dataStorage.getUserAge(user);
}

abstract class IDataStorage {
  void saveUser(User user);
  FutureOr<int> getUserAge(User user);
}

class FirebaseStorage implements IDataStorage {
  @override
  void saveUser(User user) {
    // save data
  }

  @override
  FutureOr<int> getUserAge(User user) async {
    return await Future.delayed(Duration(seconds: 1), () => 20);
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveUser(User user) {
    // connect to local storage
    // save user
  }

  @override
  int getUserAge(User user) {
    return 21;
  }
}
