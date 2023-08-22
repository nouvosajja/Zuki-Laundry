import 'package:flutter/material.dart';
import 'package:zuki_laundry/History/Proses/Pembayaran/pesanan.dart';

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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Pesanan()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(25, 164, 206, 1),
                      ),
                      width: 330, // mengatur lebar maksimal
                      height: 195, // mengatur tinggi// mengatur warna background
                      child: Column(
                        children: [
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
                                padding:
                                    EdgeInsets.only(top: 10, left: 100),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Siap diambil",
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
                            padding: EdgeInsets.only(top: 10, left: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "08 Mei",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ),
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
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 20, left: 20),
                            child: Container(
                              width: 292,
                              height: 2,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 20),
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
                            
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 70),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Menunggu Konfirmasi",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
