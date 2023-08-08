import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _paymentState();
}

class _paymentState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // riwayatVPc (338:157)
            padding: const EdgeInsets.only(top: 60, left: 25),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupfaaj9yx (UTvPVbDAQ3Srs2WsLbFAAJ)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 48),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 35,
                            ),
                            onPressed: () {
                              Navigator.pop(
                                context,
                              );
                            },
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Text(
                            'Pembayaran',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // pesanansiapdiantar73c (338:217)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                      child: const Text(
                        'Pesanan siap diantar',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // selesaikanpesananandasekarangj (338:216)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 44),
                      constraints: const BoxConstraints(
                        maxWidth: 196,
                      ),
                      child: const Text(
                        'Selesaikan pesanan anda sekarang juga',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogrouprsdc7xi (UTvPgW4eaA3Hb7M7GsRSdc)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      width: double.infinity,
                      height: 148,
                      child: Stack(
                        children: [
                          const Positioned(
                            // kgexe (338:166)
                            left: 20,
                            top: 44,
                            child: Align(
                              child: SizedBox(
                                width: 27,
                                height: 20,
                                child: Text(
                                  '3 kg',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // meiiSi (338:167)
                            left: 20,
                            top: 87,
                            child: Align(
                              child: SizedBox(
                                width: 42,
                                height: 20,
                                child: Text(
                                  '08 Mei',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // rp36000Pok (338:168)
                            left: 207,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: 65,
                                height: 20,
                                child: Text(
                                  'Rp 36.000',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle93syp (338:177)
                            left: 0,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: 292,
                                height: 148,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xff19a7ce),
                                    boxShadow: [
                                      const BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0, 4),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // siapdiambilkni (338:178)
                            left: 20,
                            top: 68,
                            child: Align(
                              child: SizedBox(
                                width: 96,
                                height: 23,
                                child: Text(
                                  'Siap diambil',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // menunggupembayaranfPt (338:179)
                            left: 109,
                            top: 118,
                            child: Align(
                              child: SizedBox(
                                width: 163,
                                height: 20,
                                child: Text(
                                  'Menunggu pembayaran',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // regulerMnW (338:180)
                            left: 20,
                            top: 10,
                            child: Align(
                              child: SizedBox(
                                width: 98,
                                height: 38,
                                child: Text(
                                  'Reguler',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // kgUML (338:181)
                            left: 20,
                            top: 48,
                            child: Align(
                              child: SizedBox(
                                width: 27,
                                height: 20,
                                child: Text(
                                  '3 kg',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // meincv (338:182)
                            left: 20,
                            top: 91,
                            child: Align(
                              child: SizedBox(
                                width: 42,
                                height: 20,
                                child: Text(
                                  '08 Mei',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // rp360006tW (338:183)
                            left: 207,
                            top: 4,
                            child: Align(
                              child: SizedBox(
                                width: 65,
                                height: 20,
                                child: Text(
                                  'Rp 36.000',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle941ka (338:184)
                            left: 20,
                            top: 111,
                            child: Align(
                              child: SizedBox(
                                width: 252,
                                height: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      // totaltagihanZZ8 (338:214)
                      'Total tagihan',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: Color(0xff000000),
                      ),
                    ),
                    Container(
                      // rp36000ust (338:215)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 34),
                      child: const Text(
                        'Rp 36.000',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Bayar',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(25, 164, 206, 1),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
