import 'package:flutter/material.dart';
import 'package:zuki_laundry/Chat/screen.dart';
import 'package:zuki_laundry/DetailPage/detailReguler.dart';
import 'package:zuki_laundry/Home/homepage.dart';
import 'package:zuki_laundry/Login/screen.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/intro.dart';
import 'package:zuki_laundry/profile/profile.dart';

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
      
      home: bottom_nav(),
    );
  }
}

