import 'package:flutter/material.dart';

class metodePembayaran extends StatefulWidget {
  const metodePembayaran({super.key});

  @override
  State<metodePembayaran> createState() => _metodePembayaranState();
}

class _metodePembayaranState extends State<metodePembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(height: 140, width: double.infinity),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: []),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(Icons.arrow_back_ios,
                              size: 40, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48, left: 95),
                    child: Container(
                      width: 290,
                      child: Text(
                        "Metode Pembayaran",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
