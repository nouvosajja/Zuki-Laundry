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
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 95, 0, 19),
                        constraints: BoxConstraints(
                          maxWidth: 283,
                        ),
                        child: Text(
                          'Tambahkan alamat Anda dengan memilih dari peta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 300,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 60, 0),
                            child: Text(
                              'Tambahkan Alamat',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(35, 0, 0, 0),
                                child: Icon(
                                  Icons.location_on,
                                  size: 34,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Text(
                                  'Gg. 7 No.34',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 8, 0, 30),
                            constraints: BoxConstraints(
                              maxWidth: 310,
                            ),
                            child: Text(
                              'Gg. 7 No.34, Besito Kulon, Besito, Kec.\nGebog, Kabupaten Kudus, Jawa Tengah 59333, Indonesia',
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

