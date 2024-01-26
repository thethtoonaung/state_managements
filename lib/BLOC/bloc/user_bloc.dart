import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/BLOC/bloc/user_event.dart';
import 'package:state_management/BLOC/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(InitialState()) {
    on<StudentEvent>(_getStudent);
    on<TeacherEvent>(_getTeacher);
  }

  void _getStudent(StudentEvent event, Emitter<UserState> emit) {
    emit(StudentState());
  }

  void _getTeacher(TeacherEvent event, Emitter<UserState> emit) {
    emit(TeacherState());
  }
}
