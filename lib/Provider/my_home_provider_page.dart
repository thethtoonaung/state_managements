import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/PROVIDER/count_provider.dart';
import 'package:state_management/PROVIDER/user_provider.dart';

class MyHomeProviderPage extends StatefulWidget {
  const MyHomeProviderPage({super.key, required this.title});

  final String title;

  @override
  State<MyHomeProviderPage> createState() => _MyHomeProviderPageState();
}

class _MyHomeProviderPageState extends State<MyHomeProviderPage> {
  @override
  Widget build(BuildContext context) {
    final countObj = Provider.of<CountProvider>(context);
    final userObj = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Provider Home")),
      body: Row(children: [
        Consumer<CountProvider>(builder: (context, counter, child) {
          return Text("${counter.count}");
        }),
        OutlinedButton(
            onPressed: () {
              countObj.increment();
              print(countObj.count);
            },
            child: const Text("Increment")),
        Consumer<UserProvider>(builder: (context, users, child) {
          return Text("${users.age}");
        }),
        OutlinedButton(
            onPressed: () {
              userObj.increment();
              print(countObj.count);
            },
            child: Text("Increase Age")),
      ]),
    );
  }
}
