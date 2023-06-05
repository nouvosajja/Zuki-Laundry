import 'package:flutter/material.dart';
import 'package:zuki_laundry/Login/screen.dart';
import 'package:zuki_laundry/Register/screen.dart';
import 'package:zuki_laundry/bottomnav.dart';

class before_login extends StatefulWidget {
  const before_login({super.key});

  @override
  State<before_login> createState() => _before_loginState();
}

class _before_loginState extends State<before_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 53, left: 50),
                child: Material(
                  child: Container(
                      child: Image.asset("asset/image/before_login.png"),
                      width: 131,
                      height: 131),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Guest",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(25, 164, 206, 1))),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 34,
          ),
          Center(
            child: Container(
              width: 290,
              child: Text(
                "Masuk atau daftarkan akun \nanda disini",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
          ),
          //make button login and register no fill and stroke 3 with row and onpressed
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  width: 130,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(25, 164, 206, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(25, 164, 206, 1)),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child: Container(
                  width: 130,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(25, 164, 206, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Daftar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(25, 164, 206, 1)),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 61,
          ),
          // Center(
          //   child: Container(
          //     width: 290,
          //     child: Text(
          //       "Keamanan & \nKebijakan Privasi",
          //       textAlign: TextAlign.center,
          //       maxLines: 3,
          //       style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //add image
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Image.asset(
                  "asset/image/keamanan.png",
                  width: 25,
                  height: 28,
                ),
              ),
              Text(
                "Keamanan & Kebijakan Privasi",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
