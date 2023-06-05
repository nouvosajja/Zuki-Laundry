import 'package:flutter/material.dart';
import 'package:zuki_laundry/bottomnav.dart';
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            Container(height: 140, width: double.infinity),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: []),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bottom_nav()),
                    );
                  },
                  child: Container(
                    child: Icon(Icons.arrow_back_ios,
                        size: 40, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 42, left: 140),
              child: Container(
                width: 290,
                child: Text(
                  "Profil",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 120, left: 50),
              child: Material(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          width: 5,
                          color: Color.fromRGBO(25, 164, 206, 1),
                        )),
                    child: Image.asset("asset/image/profile.png"),
                    width: 80,
                    height: 80),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 115, left: 105),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 111),
              child: Container(
                child: Icon(Icons.edit_rounded,
                    size: 18, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125, left: 160),
              child: Text(
                "David",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 110, left: 252),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Container(
                  child: Icon(
                    Icons.settings,
                    size: 28,
                    color: Color.fromRGBO(25, 164, 206, 1),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const editProfile()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160, left: 160),
              child: Text(
                "0123456789",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 97, 97, 97)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210, left: 30),
              child: Text(
                "Akun",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 255, left: 20),
              child: Container(
                child: Icon(
                  Icons.location_on,
                  size: 38,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 250, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Text(
                  'Alamat',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const alamat()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 305, left: 20),
              child: Container(
                child: Icon(
                  Icons.credit_card_rounded,
                  size: 38,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 300, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Text(
                  'metode Pembayaran',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const metodePembayaran()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 20),
              child: Container(
                child: Icon(
                  Icons.password,
                  size: 38,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 345, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Text(
                  'Ganti Password',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const gantiPass()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 395, left: 20),
              child: Container(
                child: Icon(
                  Icons.history,
                  size: 38,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 390, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Text(
                  'Riwayat',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const gantiPass()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 440, left: 22),
              child: Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 441, left: 25),
              child: Container(
                child: Icon(Icons.attach_money,
                    size: 30, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 435, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Text(
                  'Poin',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const gantiPass()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 485, left: 20),
              child: Container(
                child: Icon(Icons.logout, size: 38, color: Colors.red),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 480, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(223, 255, 0, 0)),
                child: Text(
                  'Keluar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 520, left: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Text(
                  'Keamanan & kebijakan privasi',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 570, left: 20),
              child: Container(
                child: Icon(
                  Icons.privacy_tip,
                  size: 32,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 563, left: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: Color.fromARGB(224, 0, 0, 0)),
                child: Text(
                  'Keamanan & kebijakan privasi',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const kebijakan()),
                  );
                },
              ),
            ),
          ],
        ),
      ]),
    )));
  }
}

//alamat no 1, sandi diganti "ganti sandi", tanggal 13
//ngejar frontend, tanggal 17