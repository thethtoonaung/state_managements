import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/BLOC/bloc/user_bloc.dart';
import 'package:state_management/BLOC/bloc/user_event.dart';
import 'package:state_management/BLOC/bloc/user_state.dart';

class MyHomeBlocPage extends StatefulWidget {
  const MyHomeBlocPage({super.key, required this.title});

  final String title;

  @override
  State<MyHomeBlocPage> createState() => _MyHomeBlocPageState();
}

class _MyHomeBlocPageState extends State<MyHomeBlocPage> {
  String defaultName = "Default";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Home")),
      body: Row(children: [
        BlocBuilder<UserBloc, UserState>(
            builder: (BuildContext context, state) {
          if (state is TeacherState) {
            defaultName = state.name;
          } else if (state is StudentState) {
            defaultName = state.name;
          }
          return Text("$defaultName");
        }),
        OutlinedButton(
            onPressed: () {
              BlocProvider.of<UserBloc>(context).add(TeacherEvent());
            },
            child: const Text("Teacher")),
        OutlinedButton(
            onPressed: () {
              BlocProvider.of<UserBloc>(context).add(StudentEvent());
            },
            child: Text("Student")),
      ]),
    );
  }
}
