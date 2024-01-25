// State ko extend htar tet htel mar ray tar ko emphameral state lo khaw

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/count_provider.dart';
import 'package:state_management/Provider/my_home_page_provider.dart';
import 'package:state_management/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            // ChangeNotifierProvider(
            //   create: (context) {
            //     return CountProvider();
            //   },
            //   child: MyHomePageProvider(title: 'Flutter Demo Home Page'),
            // )
            // Or
            ChangeNotifierProvider(
          create: (context) => CountProvider(), // short hand
          
          child: MyHomePageProvider(title: 'Flutter Demo Home Page'),
        )

        // const MyHomePageProvider(title: 'Flutter Demo Home Page'), // For SetState
        );
  }
}
