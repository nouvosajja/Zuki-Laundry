import 'package:flutter/material.dart';
import 'package:zuki_laundry/Login/screen.dart';
import 'package:zuki_laundry/Widgets/button.global.dart';
import 'package:zuki_laundry/Widgets/text.form.global.dart';



class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  
  bool loadingBallAppear = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: loadingBallAppear
            ? const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30.0),
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
                                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        
                      
                      const SizedBox(height: 30),
                      /// Name Input
                      TextFormGlobal(
                        controller: nameController, 
                        text: 'Name', 
                        textInputType: TextInputType.emailAddress, 
                        obscure: false
                        ),
                      /// Email Input
                      TextFormGlobal(
                        controller: emailController, 
                        text: 'Email', 
                        textInputType: TextInputType.emailAddress, 
                        obscure: false
                        ),
                      /// Password Input
                      TextFormGlobal(
                        controller: passwordController, 
                        text: 'Password', 
                        textInputType: TextInputType.text, 
                        obscure: true
                      ),
                      const SizedBox(height: 10),
                      const ButtonGlobal(),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Sudah punya akun?',
                            ),
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
                      )
                    ],
                  )
          )
        )
      ),
    );
  }
}