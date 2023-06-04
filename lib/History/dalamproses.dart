import 'package:flutter/material.dart';

class Proses extends StatefulWidget {
  const Proses({super.key});

  @override
  State<Proses> createState() => _ProsesState();
}

class _ProsesState extends State<Proses> {
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
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF2196F3),
                      ),
                      width: 330, // mengatur lebar maksimal
                      height: 182, // mengatur tinggi// mengatur warna background
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 65),
                    child: Container(
                      width: 290,
                      child: Text(
                        "Reguler",
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 210),
                    child: Container(
                      width: 290,
                      child: Text(
                        "Rp 36.000",
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 122, left: 65),
                    child: Container(
                      width: 290,
                      child: Text(
                        "3 kg",
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 65),
                    child: Container(
                      width: 290,
                      child: Text(
                        "Diambil",
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 65),
                    child: Container(
                      width: 290,
                      child: Text(
                        "03 Mei",
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.white),
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
