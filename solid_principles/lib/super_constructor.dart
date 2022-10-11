import 'package:equatable/equatable.dart';

// class Person {
//   String? firstName;

//   Person.fromJson(Map data) {
//     print('in Person');
//   }
// }

// class Employee extends Person {
//   // Person does not have a default constructor;
//   // you must call super.fromJson().
//   Employee.fromJson(super.data) : super.fromJson() {
//     print('in Employee');
//   }
// }

// void main() {
//   var employee = Employee.fromJson({});
//   print(employee);
// Prints:
// in Person
// in Employee
// Instance of 'Employee'
// print(UserAuthExc.invalidPassword.code);

//   var p = Student();
//   print(p.name);

//   const u = UserModel();
//   print(u.name);
// }

// class Person {
//   String name;

//   Person({this.name = 'no name'}){
//     print('constructor person');
//   }
// }

// class Student extends Person {
//   Student()  {
//     print('constructor stdent');
//   }
// }

// enum UserAuthExc {
//   invalidPassword(100, 'wrong password'),
//   invalidUserName(200, 'Username is not exist');

//   final int code;
//   final String desc;

//   const UserAuthExc(this.code, this.desc);

//   double get excCodeInDouble => code.toDouble();

//   @override
//   String toString() => '$name is one of exception';
// }

// extension UserAuthExcExten on UserAuthExc {
//   String get description {
//     if (name == 'invalidPasswor')
//   }
// }

// @immutable
class UserEntity extends Equatable {
  final String? uid;
  final String? username;
  final String? name;
  final String? bio;
  final String? website;
  final String? email;
  final String? profileUrl;
  final List? followers;
  final List? following;
  final num? totalFollowers;
  final num? totalFollowing;
  final num? totalPosts;

  // will not going to store in DB
  final String? password;
  final String? otherUid;

  const UserEntity({
    this.uid,
    this.username,
    this.name,
    this.bio,
    this.website,
    this.email,
    this.profileUrl,
    this.followers,
    this.following,
    this.totalFollowers,
    this.totalFollowing,
    this.password,
    this.otherUid,
    this.totalPosts,
  });

  @override
  List<Object?> get props => [
        uid,
        username,
        name,
        bio,
        website,
        email,
        profileUrl,
        followers,
        following,
        totalFollowers,
        totalFollowing,
        password,
        otherUid,
        totalPosts,
      ];
}

class UserModel extends UserEntity {
  const UserModel({
    super.uid,
    super.username,
    super.name,
    super.bio,
    super.website,
    super.email,
    super.profileUrl,
    super.followers,
    super.following,
    super.totalFollowers,
    super.totalFollowing,
    super.totalPosts,
  });
}
