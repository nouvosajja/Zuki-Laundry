import 'package:flutter/material.dart';
import 'package:zuki_laundry/bottomnav.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height, 
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/image/splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 160,),
              Image.asset('asset/image/splash 1.png'),
              Container(
                margin: const EdgeInsets.only(top: 45),
                child: const Text(
                  "Zuki Laundry",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Membuat Hidup Anda \nLebih Mudah dengan Layanan Laundry \nyang Efisien dan Terpercaya",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 180),
        child: FloatingActionButton.extended(
          label: const Text(
            "Get Started",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          extendedPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => bottom_nav()));
          },
        ),) 
    );
  }
}