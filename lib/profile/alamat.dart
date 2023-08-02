import 'package:flutter/material.dart';
import 'package:zuki_laundry/profile/tambahAlamat.dart';

class alamat extends StatefulWidget {
  const alamat({super.key});

  @override
  State<alamat> createState() => _alamatState();
}

class _alamatState extends State<alamat> {
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
                  Container(
                    height: 140,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const []),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios,
                            size: 40, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 42, left: 140),
                    child: Container(
                      width: 290,
                      child: const Text(
                        "Alamat",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 10, 30),
                            child: Text(
                              'Nouvo chrisna Ariyanto | Gg. 7 No.34, Besito Kulon, Besito, Kec.Gebog, Kabupaten Kudus, Jawa Tengah 59333, Indonesia',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 15, 30),
                            child: Text(
                              'Nouvo chrisna Ariyanto | Gg. 7 No.34, Besito Kulon, Besito, Kec.Gebog, Kabupaten Kudus, Jawa Tengah 59333, Indonesia',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const tambahAlamat()),
                              );
                            },
                            child: const Text('buat alamat baru'),
                          ),
                        ],
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

