import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Guest/bottomnav_guest.dart';
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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: const []),
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
                    
                    height: 80,
                    child: Image.asset("asset/image/profile.png"),
                    padding: EdgeInsets.all(2),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 110),
              child: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 124, left: 115),
              child: Icon(Icons.edit_rounded,
                  size: 16, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 125, left: 160),
              child: Text(
                "David",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 105, left: 220),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromARGB(0, 0, 0, 0)),
                child: Container(
                  child: Icon(
                    Icons.settings,
                    size: 24,
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
            Padding(
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
            Padding(
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
            Padding(
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
              padding: const EdgeInsets.only(top: 450, left: 20),
              child: Container(
                child: Icon(Icons.logout, size: 38, color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: const Color.fromARGB(224, 0, 0, 0)),
                child: const Text(
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
              padding: const EdgeInsets.only(top: 440, left: 22),
              child: Container(
                width: 33,
                height: 33,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 441, left: 25),
              child: Container(
                child: const Icon(Icons.attach_money,
                    size: 30, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 435, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: const Color.fromARGB(224, 0, 0, 0)),
                child: const Text(
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
                child: const Icon(Icons.logout, size: 38, color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 480, left: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                    foregroundColor: const Color.fromARGB(223, 255, 0, 0)),
                child: const Text(
                  'Keluar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString("token", "");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bottom_nav_guest()),
                  );
                },
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 23),
              child: Container(
                child: Icon(
                  Icons.privacy_tip,
                  size: 32,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 393, left: 60),
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
            Padding(
              padding: const EdgeInsets.only(top: 540, left: 32),
              child: Container(
                // rectangle6ScN (41:5)
                margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                width: 65,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 534, left: 120),
              child: SizedBox(
                width: 290,
                child: Text(
                  "ZUKI LAUNDRY",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 540, left: 250),
              child: Container(
                // rectangle6ScN (41:5)
                margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                width: 65,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xff000000),
                ),
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