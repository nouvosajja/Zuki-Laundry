import 'package:flutter/material.dart';
import 'package:zuki_laundry/Chat/screen.dart';
import 'package:zuki_laundry/Home/homepage.dart';
import 'package:zuki_laundry/profile/profile.dart';
import 'package:zuki_laundry/tabbar.dart';


class bottom_nav extends StatefulWidget {
  const bottom_nav({Key? key}) : super(key: key);

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int currentIndex = 0;

  void navigateTo(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Tabbar();
      default:
        return const profile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _body(),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            elevation: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            iconSize: 24,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.home)
                ),
                label: 'Home',
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.home)
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.history)
                ),
                label: 'History',
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.history)
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.person)
                ),
                label: 'Akun',
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.person)
                ),
              ),


            ],
          ),
));
  }
}
