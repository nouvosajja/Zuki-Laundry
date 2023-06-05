import 'package:flutter/material.dart';
import 'package:zuki_laundry/beforeLogin.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/intro.dart';
import 'package:zuki_laundry/pembayaran.dart';
import 'package:zuki_laundry/pesanan.dart';
import 'package:zuki_laundry/profile/profile.dart';
import 'package:zuki_laundry/tabbar.dart';

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
      
      home: intro(),
    );
  }
}

