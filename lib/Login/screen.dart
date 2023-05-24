import 'package:flutter/material.dart';
import 'package:zuki_laundry/Register/screen.dart';
import 'package:zuki_laundry/Widgets/button.global.dart';
import 'package:zuki_laundry/Widgets/text.form.global.dart';





class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool loadingBallAppear = false;
  

  @override
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: loadingBallAppear
            ? Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30.0),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70),
                      Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('asset/image/wp.png'),
                              SizedBox(height: 45),
                              Text(
                                "Masuk",
                                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ],
                      ),
                      SizedBox(height: 30),
                      /// Email Input
                      TextFormGlobal(
                        controller: emailController, 
                        text: 'Email', 
                        textInputType: TextInputType.emailAddress, 
                        obscure: false),
                      /// Password Input
                      TextFormGlobal(
                        controller: passwordController, 
                        text: 'Password', 
                        textInputType: TextInputType.text, 
                        obscure: true
                      ),
                      SizedBox(height: 10),
                      const ButtonGlobal(),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Belum punya akun?',
                            ),
                            InkWell(
                              child: Text(
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
                                  MaterialPageRoute(builder: (context) => RegisterScreen()
                                  ),
                               );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  )
          )
        )
      ),
    );
  }
}