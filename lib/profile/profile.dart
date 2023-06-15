import 'package:flutter/material.dart';
import 'package:zuki_laundry/profile/alamat.dart';
import 'package:zuki_laundry/profile/editProfile.dart';
import 'package:zuki_laundry/profile/gantiPass.dart';
import 'package:zuki_laundry/profile/kebijakanPrivasi.dart';
import 'package:zuki_laundry/profile/metodePembayaran.dart';
import 'kebijakanPrivasi.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    width: 290,
                    child: Text(
                      "Profil",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                          width: 5,
                          color: Color.fromRGBO(25, 164, 206, 1),
                        )),
                    height: 130,
                    child: Image.asset("asset/image/profile.png"),
                    padding: EdgeInsets.all(2),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text(
                            "David",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.only(right:50, bottom: 30),
                        onPressed: () {
                          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const editProfile()),
                  );
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 25,
                          color: Color.fromRGBO(25, 164, 206, 1),
                        ),
                      ),
                        ],
                      ),
                      Text(
                        "081237654335",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF515151),
                        ),
                      ),
                      
                    ],
                  ),
                
                ],
              ),
              SizedBox(
                  height: 16,
                ),
              Text(
                "Akun",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              SizedBox(
                    height: 20,
              ),
              Row(
                children: [
                  Container(
                child: Icon(
                  Icons.location_on,
                  size: 38,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const alamat()),
                  );
                },
                child: Container(
                  child: Text(
                    'Alamat',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
                ],
              ),
              SizedBox(
                    height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.credit_card_rounded,
                      size: 38,
                      color: Color.fromRGBO(25, 164, 206, 1),
                    ),
                  ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const metodePembayaran()),
                  );
                },
                child: Container(
                  child: Text(
                    'Metode Pembayaran',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
                ],
              ),
              SizedBox(
                    height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.password,
                      size: 38,
                      color: Color.fromRGBO(25, 164, 206, 1),
                    ),
                  ),
                  GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const gantiPass()),
                  );
                },
                child: Text(
                  'Ganti Password',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
                ],
              ),
              SizedBox(
                    height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: const Icon(Icons.logout, size: 38, color: Colors.red),
                  ),
                  GestureDetector(
                onTap: () {},
                child: const Text(
                  'Keluar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
                ],
              ),
              SizedBox(
                    height: 15,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.privacy_tip,
                      size: 32,
                      color: Color.fromRGBO(25, 164, 206, 1),
                    ),
                  ),
                  GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const kebijakan()),
                  );
                },
                child: Text(
                  'Keamanan & kebijakan privasi',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

//alamat no 1, sandi diganti "ganti sandi", tanggal 13
//ngejar frontend, tanggal 17