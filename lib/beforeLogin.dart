import 'package:flutter/material.dart';
import 'package:zuki_laundry/Login/screen.dart';
import 'package:zuki_laundry/Register/screen.dart';

class before_login extends StatefulWidget {
  const before_login({super.key});

  @override
  State<before_login> createState() => _before_loginState();
}

class _before_loginState extends State<before_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          color: Colors.black,
          iconSize: 30,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 53, left: 50),
                child: Material(
                  child: SizedBox(
                      width: 131,
                      height: 131,
                      child: Image.asset("asset/image/before_login.png")),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: const [
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
          const SizedBox(
            height: 34,
          ),
          const Center(
            child: SizedBox(
              width: 290,
              child: Text(
                "Masuk atau daftarkan akun \nanda disini",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
          ),
          //make button login and register no fill and stroke 3 with row and onpressed
          const SizedBox(
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
                      color: const Color.fromRGBO(25, 164, 206, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
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
              const SizedBox(
                width: 20,
              ),
              InkWell(
                child: Container(
                  width: 130,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(25, 164, 206, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
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
                    MaterialPageRoute(builder: (context) => const RegisterScreen()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
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
          const SizedBox(
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
              const Text(
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
