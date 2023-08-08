import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:zuki_laundry/model/update_model.dart';

class gantiPass extends StatefulWidget {
  const gantiPass({super.key});

  @override
  State<gantiPass> createState() => _gantiPassState();
}

class _gantiPassState extends State<gantiPass> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();

  // Fungsi untuk mengirim data profil yang diperbarui ke API
  void _changePassword() async {
    String oldPassword = oldPasswordController.text;
    String newPassword = newPasswordController.text;

    // Simpan data ke server melalui API
    final url =
        'http://zukilaundry.bardiman.com/api/user/update'; // Ganti dengan URL API Anda
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.getString('token')!;

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'old_password': oldPassword,
          'new_password': newPassword,
        }),
      );
      print('token : $token');
      print('status code : ${response.statusCode}');

      if (response.statusCode == 200) {
        // Jika pembaruan berhasil, kembali ke halaman sebelumnya
      } else {
        // Tangani kesalahan jika pembaruan gagal
        print('Failed to update profile on the server.');
      }
    } catch (e) {
      // Tangani exception jika ada masalah dengan koneksi atau API
      print('Error while updating profile: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(17, 40, 17, 16),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Material(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    child: const Icon(Icons.arrow_back_ios,
                                        size: 40,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Ganti Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                      child: Text(
                        'Password Lama',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: Color(0xff515151),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(13, 0, 0, 10),
                      child: TextField(
                        controller: oldPasswordController,
                        obscureText: true, // Display dots for the password
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Masukkan Password lama',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                      child: Text(
                        'Password baru',
                        style: TextStyle(
                          fontSize: 21.5,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: Color(0xff515151),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(13, 0, 0, 40),
                      child: TextField(
                        controller: newPasswordController,
                        obscureText: true, // Display dots for the password
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Masukkan Password Baru',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 150, 310),
                      child: TextButton(
                        onPressed: () {
                          _changePassword();
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff00a3ff),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Verifikasi',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                height: 1.3,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                            width: 65,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            'Zuki Laundry',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                            width: 65,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
