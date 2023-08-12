import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  // final Uri whatsapp = Uri.parse(
  //     'https://wa.me/6281238865335?text=Terima+kasih+sudah+menghubungi+Zuki+Laundry+admin+kami+akan+segera+membalas+chat+anda.&type=phone_number&app_absent=0');

  void _openWhatsAppChat() async {
    var url =
        'https://wa.me/6281238865335?text=Terima+kasih+sudah+menghubungi+Zuki+Laundry,+admin+kami+akan+segera+membalas+chat+anda.&type=phone_number&app_absent=0';
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // make text chat in body
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.black,
                    iconSize: 30,
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: FractionallySizedBox(
                        widthFactor: 0.4,
                        child: Text(
                          "Chat",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 250, right: 20),
                  child: SizedBox(
                    width: 290,
                    child: Text(
                      "Info lebih lanjut tolong untuk menghubungi link di bawah ini!",
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: _openWhatsAppChat,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(92, 184, 92, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.whatsapp,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10), // Jarak antara ikon dan teks
                          Text(
                            "WhatsApp",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
