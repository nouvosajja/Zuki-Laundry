import 'package:flutter/material.dart';
import 'package:zuki_laundry/Guest/homepage_guest.dart';
import 'package:zuki_laundry/beforeLogin.dart';

class bottom_nav_guest extends StatefulWidget {
  static String routeName = "/homepage";
  const bottom_nav_guest({Key? key}) : super(key: key);

  @override
  State<bottom_nav_guest> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav_guest> {
  int currentIndex = 0;

  void navigateTo(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _body() {
    switch (currentIndex) {
      case 0:
        return const HomePage_guest();
      default:
        return const before_login(); // Return an empty SizedBox for other indices
    }
  }

  void _onBottomNavItemPressed(int index) {
    if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const before_login()));
    } else {
      setState(() {
        currentIndex = index;
      });
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
    );
  }
}
