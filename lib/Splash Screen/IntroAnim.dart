import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Splash%20Screen/carousel.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'dart:async';

import 'package:zuki_laundry/Splash%20Screen/intro.dart';

void main() {
  runApp(const MaterialApp(
    home: intro_anim(),
  ));
}

class intro_anim extends StatefulWidget {
  const intro_anim({super.key});

  @override
  _intro_animState createState() => _intro_animState();
}

class _intro_animState extends State<intro_anim> {
  bool hasToken = false;
  // make check token void
  void checkToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? token = pref.getString('token');

    setState(() {
      hasToken = token != null && token.isNotEmpty;
    });
  }



  @override
  void initState() {
    super.initState();
    checkToken();
    Timer(const Duration(seconds: 3), () => hasToken ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const bottom_nav(),)) : Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroCarousel(),)));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
            children: [
              Image.asset(
                'asset/images/logo.png',
              ),
              // Image.network("https://media.giphy.com/media/XbDp1b0RVoRbVRxkay/giphy.gif")
            ],
          ),
        ),
      );
  }
}
