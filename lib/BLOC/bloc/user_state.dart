abstract class UserState {}

// Student , Teacher State

class InitialState extends UserState {}

class StudentState extends UserState {
  String name = "Mg Mg";
}

class TeacherState extends UserState {
  String name = "Daw Hla";
}

// Equatable Usage Example
// Equatable = to compare objects and return results / a comparison of old state data with new state data

// void main() {
//   User user = User('jitsm555');
//   print(user == User('jitsm555')); // Output: false
// }

// class User {
//   final String name;

//   User(this.name);
// }

// ---------------------------- //

// import 'package:equatable/equatable.dart';

// void main() {
//   User user = User('jitsm555');
//   print(user == User('jitsm555')); // Output: true
// }

// class User extends Equatable {
//   final String name;

//   User(this.name);

//   @override
//   List<Object?> get props => [name];
// }
