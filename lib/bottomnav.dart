import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zuki_laundry/Home/homepage.dart';
import 'package:zuki_laundry/Notif/screen.dart';
import 'package:zuki_laundry/profile/profile.dart';
import 'package:zuki_laundry/History/tabbar.dart';

class bottom_nav extends StatefulWidget {
  static String routeName = "/homepage";
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
      case 2:
        return const Notifikasi();
      default:
        return const profile();
    }
  }

      void _onBottomNavItemPressed(int index) {
      
     
      
        setState(() {
          currentIndex = index;
        });
  
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: _body(),
        bottomNavigationBar: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: _onBottomNavItemPressed,
              elevation: 0,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              iconSize: 24,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.grey,
              selectedItemColor: const Color.fromRGBO(25, 164, 206, 1),
              items: const [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.home),
                  ),
                  label: 'Home',
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.home),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.history),
                  ),
                  label: 'History',
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.history),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(IconlyLight.notification),
                  ),
                  label: 'Notif',
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(IconlyLight.notification),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.person),
                  ),
                  label: 'Akun',
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
