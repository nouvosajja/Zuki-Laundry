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
                  const SizedBox(height: 140, width: double.infinity),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: const Icon(Icons.arrow_back_ios,
                              size: 40, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 48, left: 95),
                    child: SizedBox(
                      width: 290,
                      child: Text(
                        "    Pembayaran",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 30),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 126, left: 36),
                    child: Container(
                      child: const Icon(Icons.wallet,
                          size: 38, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 75),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                          foregroundColor: const Color.fromARGB(223, 0, 0, 0)),
                      child: const Text(
                        'GoPay',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 155),
                    child: Container(
                      child: const Icon(
                        Icons.add_circle_rounded,
                        size: 25,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 30),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(149, 25, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210, left: 40),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 217, left: 47),
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(149, 25, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 75),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                          foregroundColor: const Color.fromARGB(223, 0, 0, 0)),
                      child: const Text(
                        'OVO',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 135),
                    child: Container(
                      child: const Icon(
                        Icons.add_circle_rounded,
                        size: 25,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280, left: 30),
                    child: Container(
                      child: const Icon(
                        Icons.credit_card,
                        size: 50,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280, left: 75),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                          foregroundColor: const Color.fromARGB(223, 0, 0, 0)),
                      child: const Text(
                        'Debit',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280, left: 145),
                    child: Container(
                      child: const Icon(
                        Icons.add_circle_rounded,
                        size: 25,
                        color: Color.fromRGBO(25, 164, 206, 1),
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
