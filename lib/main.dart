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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Page 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset("assets/images/Logo.png", width: 45),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Find Cozy House\nto Stay and Happy",
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: const Text(
                      "Stop buang banyak waktu dan uang",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color.fromARGB(255, 156, 156, 156)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: const Text(
                      "pada tempat yang tidak habitable.",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Color.fromARGB(255, 156, 156, 156),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 45,
                    margin: EdgeInsets.only(top: 30),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 100, 74, 228),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Explore Now",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 270,
              color: Color.fromARGB(255, 243, 140, 132),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/Splash.png",
              width: 350,
            ),
          ),
        ],
      ),
    );
  }
}