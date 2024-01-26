// State ko extend htar tet htel mar ray tar ko emphameral state lo khaw

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_management/BLOC/bloc/user_bloc.dart';
import 'package:state_management/BLOC/my_home_bloc_page.dart';
import 'package:state_management/GETX/my_home_getx_page.dart';
import 'package:state_management/PROVIDER/count_provider.dart';
import 'package:state_management/PROVIDER/my_home_provider_page.dart';
import 'package:state_management/PROVIDER/user_provider.dart';
import 'package:state_management/SETSTATE/my_home_setstate_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ------------------------------------------ // Get X Start

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX counter app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeGetXPage(),
    );

    // ------------------------------------------ // Get X End

    // return MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home:

    //         // ------------------------------------ //Bloc Start
    //         //   BlocProvider(
    //         // create: (context) => UserBloc(),
    //         // child: const MyHomeBlocPage(title: 'Flutter Demo Home Page'),),

    //         // ------------------------------------------------------- // Bloc End

    //         //-------------------------------------- // Provider start

    //         MultiProvider(
    //       providers: [
    //         ChangeNotifierProvider(create: (context) => CountProvider()),
    //         ChangeNotifierProvider(create: (context) => UserProvider())
    //       ], // For Multi Provider

    //       //   ChangeNotifierProvider(
    //       // create: (context) => CountProvider(), //  For Single provider

    //       child: const MyHomeProviderPage(title: 'Flutter Demo Home Page'),
    //     )

    //     //---------------------------------------------------- // Provider End

        // const MyHomeSetStatePage(title: 'Flutter Demo Home Page'), // For SetState
    //     );
  }
}
