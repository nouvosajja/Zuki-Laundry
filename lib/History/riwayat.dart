import 'package:flutter/material.dart';

const List<String> list = [
  'Pilih',
  'Bulan Ini',
  'Bulan lalu',
  'Dua Bulan lalu'
];

class Riwayat extends StatefulWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  State<Riwayat> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Riwayat> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(25, 164, 206, 1),
              ),
              width: 330, // mengatur lebar maksimal
              height: 195, // mengatur tinggi// mengatur warna background
              child: Column(children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Reguler",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 140),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "08 Mei",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "3 kg",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Rp. 36.000",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Container(
                    width: 292,
                    height: 2,
                    color: Colors.white,
                  ),
                ),
                
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 260),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Selesai",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    ));
  }
}
