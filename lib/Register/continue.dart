import 'package:flutter/material.dart';
import 'package:zuki_laundry/Home/homepage.dart';
import 'package:zuki_laundry/Login/screen.dart';
import 'package:zuki_laundry/Widgets/text.form.global.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/profile/kebijakanPrivasi.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  final TextEditingController nomerController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const bottom_nav()),
                                  );
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

                          // const ButtonGlobal(),
                          Column(
                            children: [
                              SizedBox(height: 20),
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
                        ],
                      )),
                    ))),
    );
  }
}
