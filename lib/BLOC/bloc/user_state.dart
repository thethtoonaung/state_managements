abstract class UserState {}

// Student , Teacher State

class InitialState extends UserState{}

class StudentState extends UserState {
  String name = "Mg Mg";
}

class TeacherState extends UserState {
  String name = "Daw Hla";
}
