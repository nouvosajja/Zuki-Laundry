import 'package:flutter/material.dart';
import 'package:zuki_laundry/Login/screen.dart';
import 'package:zuki_laundry/bottomnav.dart';
import '../Home/homepage.dart';

final Map<String, WidgetBuilder> routes = {
    HomePage.routeName: (context) => const HomePage(),
    bottom_nav.routeName: (context) => const bottom_nav(),
    LoginScreen.routeName: (context) => const LoginScreen(),
};