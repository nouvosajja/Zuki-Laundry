import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  void _openWhatsAppChat() async {
    var url =
        'https://wa.me/6281238865335?text=Terima+kasih+sudah+menghubungi+Zuki+Laundry,+admin+kami+akan+segera+membalas+chat+anda.&type=phone_number&app_absent=0';
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 167, 206, 1),
      appBar: AppBar(
          title: const Text("Chat", 
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25, color: Colors.white),),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Center(
            child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 190, right: 20),
                    child: SizedBox(
                      width: 290,
                      child: Text(
                        "Info lebih lanjut tolong untuk menghubungi link di bawah ini!",
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                 const SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: _openWhatsAppChat,
                    child: Image.asset(
                      'asset/images/wa.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
