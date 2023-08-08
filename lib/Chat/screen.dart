import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher_string.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  // final Uri whatsapp = Uri.parse(
  //     'https://wa.me/6281238865335?text=Terima+kasih+sudah+menghubungi+Zuki+Laundry+admin+kami+akan+segera+membalas+chat+anda.&type=phone_number&app_absent=0');

  void _openWhatsAppChat() async {
    String phoneNumber = '6281238865335';
    var url = 'https://wa.me/6281238865335?text=Terima+kasih+sudah+menghubungi+Zuki+Laundry,+admin+kami+akan+segera+membalas+chat+anda.&type=phone_number&app_absent=0';
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // make text chat in body
      body: Container(
        padding: EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                "Chat",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              // make text info lebih lanjut
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 250, right: 20),
                child: SizedBox(
                  width: 290,
                  child: Text(
                    "Info lebih lanjut tolong untuk menghubungi link di bawah ini!",
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
            ),

            // make button link
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: SizedBox(
                  width: 290,
                  child: ElevatedButton(
                    onPressed: () {
                      _openWhatsAppChat();
                    },
                    child: Text(
                      "Open WhatsApp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
