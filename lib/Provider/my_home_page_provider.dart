import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/count_provider.dart';

class MyHomePageProvider extends StatefulWidget {
  const MyHomePageProvider({super.key, required this.title});

  final String title;

  @override
  State<MyHomePageProvider> createState() => _MyHomePageProviderState();
}

class _MyHomePageProviderState extends State<MyHomePageProvider> {
  @override
  Widget build(BuildContext context) {
    final countObj = Provider.of<CountProvider>(context);

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
            child: Text("Increment"))
      ]),
    );
  }
}
