import 'package:flutter_cozy_kost_app/pages/home_page.dart';
import 'package:flutter_cozy_kost_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cozy_kost_app/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/splash_image.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 50,
                    left: 30,
                    right: 30
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Logo.png')),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Find Cozy House\nto Stay and Happy',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Stop wasting a lot of time in places that are not habitable',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 210,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Text(
                            'Explore Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
