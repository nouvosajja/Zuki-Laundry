import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Home/homepage.dart';
import 'package:zuki_laundry/Register/screen.dart';
import 'package:zuki_laundry/Widgets/text.form.global.dart';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/model/login_model.dart';
import 'package:zuki_laundry/firebase_options.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/loginscreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController ctremail = new TextEditingController();
  TextEditingController ctrpassword = new TextEditingController();

  postData(BuildContext context) async {
    if (ctremail.text.isNotEmpty && ctrpassword.text.isNotEmpty) {
      String devicetoken;

      devicetoken = await getDeviceToken();
      print('deviceToken = $devicetoken');

      var response = await http
          .post(Uri.parse("http://zukilaundry.bardiman.com/api/login"), body: {
        "email": "${ctremail.text}",
        "password": "${ctrpassword.text}"
      });

      print("Status Code : ${response.statusCode}");
      print(response.body);

      if (response.statusCode == 200) {
        LoginModel user = loginModelFromJson(response.body);

        // post save token

        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString('token', user.data.token);
        pref.setString('devicetoken', devicetoken);
        print(response.body);
        if (user.success == true) {
          print("Login Berhasil");
          Navigator.pushNamed(context, bottom_nav.routeName);
        } else {
          print("Login Gagal");
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Email atau Password tidak valid")));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Email atau Password tidak valid")));
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
