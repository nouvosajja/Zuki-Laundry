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

  @override
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
    const url = 'http://zukilaundry.bardiman.com/api/user';

    print('-----------user-------------');

    //call token from set pref
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.getString('token')!;

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
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 164, 206, 1),
        appBar: AppBar(
          title: const Text("Profil", 
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25, color: Colors.white),),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          elevation: 0,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 15),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfile()),
              );
            },
            icon: const Icon(
              Icons.settings,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 24),
            child: FutureBuilder(
              future: getprofil(),
              builder: (context, snapshot) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: 310, // mengatur lebar maksimal
                      height: 395,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              profil_api?.name ?? 'Data tidak ada',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              profil_api?.number ?? 'Data tidak ada',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF515151),
                              ),
                            ),
                          
                    const SizedBox(
                        height: 60,
                    ),
                    Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 32,
                            color: Color.fromRGBO(25, 164, 206, 1),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const alamat()),
                              );
                            },
                            child: const Text(
                              'Alamat',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                    ),
                    const SizedBox(
                        height: 15,
                    ),
                    Row(
                        children: [
                          const Icon(
                            Icons.credit_card_rounded,
                            size: 32,
                            color: Color.fromRGBO(25, 164, 206, 1),
                          ),
                          const SizedBox(
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
                              child: const Text(
                                'Metode Pembayaran',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                    ),
                    const SizedBox(
                        height: 15,
                    ),
                    Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.password,
                              size: 32,
                              color: Color.fromRGBO(25, 164, 206, 1),
                            ),
                          ),
                          const SizedBox(
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
                            child: const Text(
                              'Ganti Password',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                    ),
                    const SizedBox(
                        height: 15,
                    ),
                    Row(
                        children: [
                          Container(
                            child: const Icon(Icons.logout,
                                size: 32, color: Colors.red),
                          ),
                          const SizedBox(
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
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                    ),
                    ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Icon(
                            Icons.privacy_tip,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
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
                          child: const Text(
                            'Keamanan & kebijakan privasi',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
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
        ));
  }
}

//alamat no 1, sandi diganti "ganti sandi", tanggal 13
//ngejar frontend, tanggal 17