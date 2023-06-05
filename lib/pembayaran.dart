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
            padding: EdgeInsets.only(top: 60, left: 25),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupfaaj9yx (UTvPVbDAQ3Srs2WsLbFAAJ)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 48),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
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
                          SizedBox(
                            width: 25,
                          ),
                          Text(
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                      child: Text(
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 44),
                      constraints: BoxConstraints(
                        maxWidth: 196,
                      ),
                      child: Text(
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 63),
                      width: double.infinity,
                      height: 148,
                      child: Stack(
                        children: [
                          Positioned(
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
                          Positioned(
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
                          Positioned(
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
                                    color: Color(0xff19a7ce),
                                    boxShadow: [
                                      BoxShadow(
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
                          Positioned(
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
                          Positioned(
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
                          Positioned(
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
                          Positioned(
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
                          Positioned(
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
                          Positioned(
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
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupctyivMk (UTvPypu7bc1GzyxyJ3cTYi)
                      margin: EdgeInsets.fromLTRB(0, 0, 103, 32),
                      width: double.infinity,
                      height: 53,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // gopayeHk (338:198)
                            margin: EdgeInsets.fromLTRB(0, 0, 5, 1),
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              ("asset/image/GoPay.png"),
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Container(
                            // autogroup4nqtMxr (UTvQ6A3uAUmA6MomTQ4nqt)
                            width: 134,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // gopaytxn (338:201)
                                  width: double.infinity,
                                  child: Text(
                                    'GoPay',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      height: 1.5,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // saldorp50000q7L (338:202)
                                  width: double.infinity,
                                  child: Text(
                                    'Saldo :  Rp 50.000',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                      child: Text(
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
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          child: Text(
                            'Bayar',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(25, 164, 206, 1),
                            minimumSize: Size(150, 50),
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
