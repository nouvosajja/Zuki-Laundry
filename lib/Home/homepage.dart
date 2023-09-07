import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Widgets/paket.global.dart';
import 'package:zuki_laundry/model/user_model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  static String routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  UserModel? profil_api;

  List<String> imagePaths = [
    'asset/images/P1.png', // Replace with your image paths
    'asset/images/P2.png',
    'asset/images/zuki.png',
  ];
  late Timer _timer;

  @override
  void initState() {
    getprofil().then((value) {
      setState(() {
        profil_api = value;
      });
    });
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

    Future getprofil() async {
    final url = 'http://zukilaundry.bardiman.com/api/user';

    print('-----------user-------------');

    //call token from set pref
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.getString('token')!;

    print('token : $token');

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      print('token : $token');
      print('status code : ${response.statusCode}');

      if (response.statusCode == 200) {
        print(url);

        UserModel model = UserModel.fromJson(json.decode(response.body));
        return model;
      } else {
        throw Exception("Failed to fetch data from API");
      }
    } catch (e) {
      print(e.toString());
    }
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
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: Color.fromRGBO(25, 164, 206, 1),
            ),
            width: 360,
            height: 140,
            padding: EdgeInsets.all(20),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hi ${profil_api?.name ?? 'Data tidak ada'}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Selamat datang kembali \ndi Zuki Laundry!",
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
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
                  color: _currentPage == index
                      ? Colors.blue
                      : Color.fromRGBO(192, 191, 191, 1),
                ),
              );
            }),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 25, left: 10),
          //   child: Stack(
          //     alignment: Alignment.center,
          //     children: [
          //       Image.asset(
          //         'asset/images/bc.png', // Replace with your actual image path
          //         fit: BoxFit.cover,
          //       ),
          //       Positioned.fill(
          //         child: Padding(
          //           padding: const EdgeInsets.all(30),
          //           child: SizedBox(
          //             width: 292,
          //             child: Text(
          //               "Tempat yang tepat untuk mencuci pakaian dengan cepat dan tetap menjaga kebersihan serta kualitas cucian yang optimal",
          //               textAlign: TextAlign.center,
          //               maxLines: 3,
          //               style: TextStyle(
          //                 fontWeight: FontWeight.normal,
          //                 fontSize: 13,
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 10),
          // const bubble(),
          const Paket()
        ])),
      ),
    );
  }
}
