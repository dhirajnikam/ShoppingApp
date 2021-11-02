import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shopui/buy/buy.dart';
import 'package:shopui/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //   primarySwatch: Colors.white,
          ),
initialRoute: '/home',
routes: {
  '/home':(context) => const MyHomePage(),
  '/buy':(context) => const Buy(),
},
      //home: MyHomePage(),
    );
  }
}

