//// GOOD implementation of DEPENDENCY INVERSION
///
///

class User {
  // User related thing
}

/// **** HIGH LEVEL MODULE ****
///
class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) => dataStorage.saveUser(user);
}

/// *** ini ABSTARCTION (interface) ***
/// Kontrak ini berbunyi bahwa
/// akan ada alat yang mengimplementasikan
/// IDataStorage, alat tersebut akan punya
/// method untuk save data.. Terserah cara
/// save nya seperti apa..
///
abstract class IDataStorage {
  void saveUser(User user);
}

/// LOW LEVEL MODULE
/// Yang mengimplementasikan
/// abstraction (IDataStorage)
///
class FirebaseStorage implements IDataStorage {
  @override
  void saveUser(User user) {
    // connect to firebase
    // save data
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveUser(User user) {
    // connect to local storage
    // save user
  }
  
}
