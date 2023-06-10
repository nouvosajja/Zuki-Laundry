import 'package:flutter/material.dart';
import 'package:zuki_laundry/IntroAnim.dart';
import 'package:zuki_laundry/route/routes.dart';

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
      routes: routes,
      home: const intro_anim(),
    );
  }
}
