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
                    padding: EdgeInsets.only(top: 110, left: 20),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 30),
                    child: Container(
                      child: Icon(Icons.wallet,
                          size: 48, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 85),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(0, 0, 0, 0),
                          foregroundColor: Color.fromARGB(223, 0, 0, 0)),
                      child: Text(
                        'GoPay',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 190),
                    child: Container(
                      child: Icon(
                        Icons.add_circle_rounded,
                        size: 30,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200, left: 20),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(149, 25, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 209.5, left: 30),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 217, left: 37.5),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(149, 25, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210, left: 85),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(0, 0, 0, 0),
                          foregroundColor: Color.fromARGB(223, 0, 0, 0)),
                      child: Text(
                        'OVO',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 205, left: 165),
                    child: Container(
                      child: Icon(
                        Icons.add_circle_rounded,
                        size: 30,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280, left: 20),
                    child: Container(
                      child: Icon(
                        Icons.credit_card,
                        size: 70,
                        color: Color.fromRGBO(25, 164, 206, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290, left: 85),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(0, 0, 0, 0),
                          foregroundColor: Color.fromARGB(223, 0, 0, 0)),
                      child: Text(
                        'Debit',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 285, left: 170),
                    child: Container(
                      child: Icon(
                        Icons.add_circle_rounded,
                        size: 30,
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
