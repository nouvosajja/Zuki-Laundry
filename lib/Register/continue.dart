import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Login/screen.dart';
import 'package:zuki_laundry/Widgets/text.form.global.dart';
import 'package:zuki_laundry/model/register_model.dart';
import 'package:zuki_laundry/profile/kebijakanPrivasi.dart';
import 'package:http/http.dart' as http;



class ContinueScreen extends StatefulWidget {
  ContinueScreen({Key? key, required this.name, required  this.email, required  this.password}) : super(key: key);
  final String name, email, password;
  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  final TextEditingController nomerController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  registerData() async {
    if (widget.name.isNotEmpty &&
        widget.email.isNotEmpty &&
        widget.password.isNotEmpty &&
        nomerController.text.isNotEmpty &&
        alamatController.text.isNotEmpty) {
      var response = await http.post(Uri.parse("http://zukilaundry.bardiman.com/api/register"), body: {
        "name": "${widget.name}",
        "email": "${widget.email}",
        "password": "${widget.password}",
        "nomer": "${nomerController.text}",
        "alamat": "${alamatController.text}"
      });
      print("Status Code : ${response.statusCode}");
      print(response.body);

      if (response.statusCode == 200) {
               RegisterModel user = registerModelFromJson(response.body);

        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString('token', user.data.token);
        //pindah page
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Email Sudah Terdaftar")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Isi Semua Kolom dengan benar")));
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
                              Image.asset('asset/image/wp.png'),
                              const SizedBox(height: 45),
                              const Text(
                                "Daftar",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          const SizedBox(height: 30),

                          /// Name Input
                          TextFormGlobal(
                              controller: nomerController,
                              text: 'Nomer Hp',
                              textInputType: TextInputType.emailAddress,
                              obscure: false),

                          /// Email Input
                          TextFormGlobal(
                              controller: alamatController,
                              text: 'Alamat',
                              textInputType: TextInputType.emailAddress,
                              obscure: false),

                          const SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 50,
                            ),
                            child: Container(
                              height: 50,
                              width: 300,
                              child: ElevatedButton(
                                onPressed: () {
                                  registerData();
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => const bottom_nav()),
                                  // );
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(0, 163, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
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
                                'Sudah punya akun?',
                              ),
                              SizedBox(width: 2.5,),
                              InkWell(
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LoginScreen()
                                    ),
                                 );
                                },
                              ),
                            ],
                          ),
                        ),

                          Center(
                            child: Column(
                              children: [
                                Text(
                                  'Dengan melanjutkan, anda menyetujui',
                                ),
                                InkWell(
                                  child: const Text(
                                    'Kebijakan Privasi',
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
                                          builder: (context) => kebijakan()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ))),
    );
  }
}
