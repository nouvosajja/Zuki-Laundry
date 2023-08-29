import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({Key? key}) : super(key: key);

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
        title: Text(
          "WhatsApp",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 190, right: 20),
                    child: SizedBox(
                      width: 290,
                      child: Text(
                        "Info lebih lanjut tolong untuk menghubungi link di bawah ini!",
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      _openWhatsAppChat();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(84, 191, 98, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white), // FontAwesome icon here
                        SizedBox(width: 10),
                        Text(
                          'WhatsApp',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
