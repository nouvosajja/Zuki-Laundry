import 'package:flutter/material.dart';
import 'package:zuki_laundry/Detail/detailpage.dart';
import 'package:zuki_laundry/Home/homepage.dart';
import 'package:zuki_laundry/Login/screen.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

