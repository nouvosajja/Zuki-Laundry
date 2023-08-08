import 'package:flutter/material.dart';
import 'dart:async';

import 'package:zuki_laundry/intro.dart';

void main() {
  runApp(const MaterialApp(
    home: intro_anim(),
  ));
}

class intro_anim extends StatefulWidget {
  const intro_anim({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<intro_anim> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const intro()),
      );
    });
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
            ],
          ),
        ),
      );
  }
}
