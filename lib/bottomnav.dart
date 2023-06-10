import 'package:flutter/material.dart';
import 'package:zuki_laundry/Home/homepage.dart';
import 'package:zuki_laundry/profile/profile.dart';
import 'package:zuki_laundry/tabbar.dart';

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
      default:
        return const profile();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _body(),
        // body: _widgetOptions.elementAt(isLogin ? 2 : _selectedIndex),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BottomNavigationBar(
            // currentIndex: isLogin ? 1 : 0,
            //   onTap: (index) {
            //     setState(() {
            //       isLogin = index == 3;
            //     },
            //   );
            // },
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
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color.fromRGBO(25, 164, 206, 1),
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.home)),
                label: 'Home',
                activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.home)),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.history)),
                label: 'History',
                activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.history)),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.person)),
                label: 'Akun',
                activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(Icons.person)),
              ),
            ],
          ),
        ));
  }
}
