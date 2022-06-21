import 'package:flutter/material.dart';
import "package:flutter_cozy_kost_app/mainscreen.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}