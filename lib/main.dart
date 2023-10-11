import 'package:flutter_cozy_kost_app/pages/spalsh_page.dart';
import 'package:flutter_cozy_kost_app/providers/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: ChangeNotifierProvider(
        create: (context) => SpaceProvider(),
        child: MaterialApp(
          home: SplashPage(),
        ),
      ),
    );
  }
}
