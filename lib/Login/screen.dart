import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Register/screen.dart';
import 'package:zuki_laundry/Widgets/text.form.global.dart';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/model/login_model.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/loginscreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController ctremail = TextEditingController();
  TextEditingController ctrpassword = TextEditingController();

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const bottom_nav(),
            ),
          );
        });

        return AlertDialog(
          title: Text('Login Berhasil'),
          content: Text('Anda berhasil login.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red, // Change button text color
              ),
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  postData(BuildContext context) async {
    if (ctremail.text.isNotEmpty && ctrpassword.text.isNotEmpty) {
      String devicetoken;

      devicetoken = await getDeviceToken();
      print('deviceToken = $devicetoken');

      var response = await http.post(
          Uri.parse("http://zukilaundry.bardiman.com/api/login"),
          body: {"email": ctremail.text, "password": ctrpassword.text});

      print("Status Code : ${response.statusCode}");
      print(response.body);

      if (response.statusCode == 200) {
        LoginModel user = loginModelFromJson(response.body);

        // post save token
        try {
          var saveTokenResponse = await http.post(
            Uri.parse("http://zukilaundry.bardiman.com/api/save-token"),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${user.data.token}',
            },
            body: json.encode({
              "token": devicetoken,
              "id_user": user.data.token,
            }),
          );

          if (saveTokenResponse.statusCode == 200) {
            print("Device token saved to server successfully");
          } else {
            print("Failed to save device token to server");
          }
        } catch (error) {
          print("Error saving device token to server: $error");
        }

        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString('token', user.data.token);
        pref.setString('devicetoken', devicetoken);
        print(response.body);
        if (user.success == true) {
          print("Login Berhasil");
          _showSuccessDialog(context); // Show the success dialog
        } else {
          print("Login Gagal");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Email atau Password tidak valid")),
          );

          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Email atau Password tidak valid")));
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Isi Semua Kolom dengan benar")));
    }
  }

  Future<void> saveToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('token', token);
  }

  Future<String> getDeviceToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    String? deviceToken = await messaging.getToken();

    if (deviceToken != null) {
      debugPrint('token = $deviceToken');
      return deviceToken;
    } else {
      throw Exception('Gagal membuat device token');
    }
  }

  bool loadingBallAppear = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
            child: loadingBallAppear
                ? const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 30.0),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: SingleChildScrollView(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 70),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('asset/images/wp.png'),
                            const SizedBox(height: 45),
                            const Text(
                              "Masuk",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),

                        /// Email Input
                        TextFormGlobal(
                            controller: ctremail,
                            text: 'Email',
                            textInputType: TextInputType.emailAddress,
                            obscure: false),

                        /// Password Input
                        TextFormGlobal(
                            controller: ctrpassword,
                            text: 'Password',
                            textInputType: TextInputType.text,
                            obscure: true),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                          ),
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () {
                                postData(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(0, 163, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Belum punya akun?',
                              ),
                              const SizedBox(
                                width: 2.5,
                              ),
                              InkWell(
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterScreen()),
                                  );
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    )))),
      ),
    );
  }
}
