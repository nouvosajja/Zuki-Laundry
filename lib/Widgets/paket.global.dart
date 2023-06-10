import 'package:flutter/material.dart';
import 'package:zuki_laundry/DetailPage/detailKilat.dart';
import 'package:zuki_laundry/DetailPage/detailreguler.dart';

class Paket extends StatelessWidget {
  const Paket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 425,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
                width: double.infinity, // mengatur lebar maksimal
                height: 375, // mengatur tinggi// mengatur warna background
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          'Silahkan pilih paket yang telah kami sediakan',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Divider(
                thickness: 3,
                color: Colors.white,
                indent: 30,
                endIndent: 30,
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 50),
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'asset/images/reguler.png',
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const detail_reguler()),
                            );
                          },
                        ),
                        const Padding(
                        padding: EdgeInsets.only(top: 80, left: 27),
                        child: Text("Reguler", style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Container(
                    width: 155,
                    child: const Text(
                      "Pakaian bersih dan wangi maksimal", textAlign: TextAlign.left, maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 30),
                  child: Container(
                    width: 155,
                    child: const Text(
                      "Solusi untuk kebutuhan mendadak anda", textAlign: TextAlign.right, maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20),
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'asset/images/lightning.png',
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const detail_kilat()),
                            );
                          },
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 80, left: 35),
                            child: Text("Kilat", style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          
    
      ]),
      

            
    );     
  }
}