import 'package:flutter/material.dart';
import 'package:orange_test/pages/home.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'components/bottomBar.dart';

Future main() async{
  // Initialize FFI
  sqfliteFfiInit();


  databaseFactory = databaseFactoryFfi;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Home(),
    );
  }
}



