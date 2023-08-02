import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Guest/bottomnav_guest.dart';
import 'package:zuki_laundry/model/user_model.dart';
import 'package:zuki_laundry/profile/alamat.dart';
import 'package:zuki_laundry/profile/editProfile.dart';
import 'package:zuki_laundry/profile/gantiPass.dart';
import 'package:zuki_laundry/profile/kebijakanPrivasi.dart';
import 'package:zuki_laundry/profile/metodePembayaran.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool isLoading = false;

  UserModel? profil_api;

  void initState() {
    getprofil();
    getprofil().then((value) {
      setState(() {
        profil_api = value;
      });
    });
  super.initState();
}

Future getprofil() async {
    final endPointUrl = 'profile/';
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
  Widget build(BuildContext context) {
        if (profil_api?.name == null || profil_api?.number == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 24),
          child: FutureBuilder(
            future: getprofil(),
            builder: (context, snapshot) {
              return
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, right: 40),
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
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                              profil_api?.name ?? 'Data tidak ada',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.only(right: 15, bottom: 30),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const editProfile()),
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
                          profil_api?.number ?? 'Data tidak ada',
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
                
                SizedBox(
                  height: 40,
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
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  alamat()),
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
                  height: 15,
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
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const metodePembayaran()),
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
                  height: 15,
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
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const gantiPass()),
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
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      child:
                          const Icon(Icons.logout, size: 38, color: Colors.red),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.remove("token");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const bottom_nav_guest()),
                        );
                      },
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
                  height: 50,
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
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const kebijakan()),
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
            );
            },
          ),
        ),
      ),
    ));
  }
}

//alamat no 1, sandi diganti "ganti sandi", tanggal 13
//ngejar frontend, tanggal 17