import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zuki_laundry/Widgets/bubble.global.dart';
import 'package:zuki_laundry/Widgets/paket.global.dart';
import 'package:zuki_laundry/bonus.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<String> imagePaths = [
    'asset/images/P1.png', // Replace with your image paths
    'asset/images/P2.png',
    'asset/images/zuki.png',
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Initialize the timer for auto-scrolling
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < imagePaths.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 0, width: double.infinity),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 240,
                            child: Text(
                              "Selamat datang di Zuki Laundry!",
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Card(
                            margin: const EdgeInsets.only(left: 20),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Bonus()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  'asset/images/bonus.png', // Replace with your actual asset image path
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ])),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: SizedBox(
              height: 150, // Adjust the height as needed
              child: PageView.builder(
                controller: _pageController,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                        right: 10), // Adjust spacing between images
                    child: Image.asset(imagePaths[index]),
                  );
                },
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(imagePaths.length, (int index) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.blue : Colors.grey,
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'asset/images/bc.png', // Replace with your actual image path
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: SizedBox(
                      width: 292,
                      child: Text(
                        "Tempat yang tepat untuk mencuci pakaian dengan cepat dan tetap menjaga kebersihan serta kualitas cucian yang optimal",
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const bubble(),
          const Paket()
        ])),
      ),
    );
  }
}
