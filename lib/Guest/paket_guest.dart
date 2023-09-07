import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:zuki_laundry/Home/DetailPage/detailKilat.dart';
import 'package:zuki_laundry/Home/DetailPage/detailReguler.dart';
import 'package:zuki_laundry/model/paket_model.dart';

class Paket_guest extends StatefulWidget {
  const Paket_guest({super.key});

  @override
  _Paket_guestState createState() => _Paket_guestState();
}

class _Paket_guestState extends State<Paket_guest> {
  PaketModel? paket;
  Future<List<PaketModel>> getpaket() async {
    final response =
        await http.get(Uri.parse('http://zukilaundry.bardiman.com/api/paket'));
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => PaketModel.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data from API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: FutureBuilder<List<PaketModel>>(
        future: getpaket(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<PaketModel> paketList =
                snapshot.data!; // Use snapshot.data to get the List<PaketModel>
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Silahkan pilih paket laundry yang \ntelah kami sediakan!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 105,
                            width: 140,
                            child: Stack(
                              children: [
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, left: 25),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
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
                                      MaterialPageRoute(
                                          builder: (context) => detail_reguler(
                                                data: paketList[0],
                                              )),
                                    );
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 80, left: 12),
                                  child: Text(
                                    paketList[0]
                                        .namaPkt!, // Tampilkan nama paket Reguler dari model
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 105,
                            width: 140,
                            child: Stack(
                              children: [
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, left: 25),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
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
                                      MaterialPageRoute(
                                          builder: (context) => detail_kilat(
                                                data: paketList[1],
                                              )),
                                    );
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 80, left: 20),
                                  child: Text(
                                    paketList[1]
                                        .namaPkt!, // Tampilkan nama paket Reguler dari model
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ayo cek promo yang kami \ntawarkan untuk anda!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height: 105,
                        width: 310,
                      ),
                    ),
                  ],
                ),
              ],
            );
            // Column(children: [
            //   Padding(
            //     padding: const EdgeInsets.only(top: 50),
            //     child: Container(
            //       decoration: const BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(40),
            //           topRight: Radius.circular(40),
            //         ),
            //         color: Color.fromRGBO(25, 164, 206, 1),
            //       ),
            //       width: double.infinity, // mengatur lebar maksimal
            //       height: 375, // mengatur tinggi// mengatur warna background
            //       child: Padding(
            //         padding: const EdgeInsets.only(top: 30),
            //         child: Center(
            //           child: Column(
            //             children: [
            //               const Text(
            //                 'Silahkan pilih paket yang telah kami sediakan',
            //                 style: TextStyle(
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white),
            //                 textAlign: TextAlign.center,
            //               ),
            //               const Padding(
            //                 padding: EdgeInsets.only(top: 20),
            //                 child: Divider(
            //                   thickness: 3,
            //                   color: Colors.white,
            //                   indent: 30,
            //                   endIndent: 30,
            //                 ),
            //               ),
            //               Row(
            //                 children: [
            //                   Padding(
            //                     padding:
            //                         const EdgeInsets.only(top: 40, left: 50),
            //                     child: Container(
            //                       height: 105,
            //                       width: 105,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(20),
            //                         color: Colors.white,
            //                         boxShadow: [
            //                           BoxShadow(
            //                             color: Colors.grey.withOpacity(0.5),
            //                             spreadRadius: 2,
            //                             blurRadius: 7,
            //                             offset: const Offset(0, 3),
            //                           ),
            //                         ],
            //                       ),
            //                       child: Stack(
            //                         children: [
            //                           InkWell(
            //                             child: Padding(
            //                               padding:
            //                                   const EdgeInsets.only(bottom: 15),
            //                               child: Align(
            //                                 alignment: Alignment.center,
            //                                 child: Image.asset(
            //                                   'asset/images/reguler.png',
            //                                   height: 60,
            //                                   width: 60,
            //                                 ),
            //                               ),
            //                             ),
            //                             onTap: () {
            //                               Navigator.push(
            //                                 context,
            //                                 MaterialPageRoute(
            //                                     builder: (context) =>new
            //                                         detail_reguler(data: paketList[0],)),
            //                               );
            //                             },
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.only(
            //                                 top: 80, left: 12),
            //                             child: Text(
            //                               paketList[0].namaPkt!, // Tampilkan nama paket Reguler dari model
            //                               style: const TextStyle(
            //                                   fontWeight: FontWeight.bold),
            //                             ),
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                   const Padding(
            //                     padding:
            //                         EdgeInsets.only(top: 40, left: 20),
            //                     child: SizedBox(
            //                       width: 155,
            //                       child: Text(
            //                         "Pakaian bersih dan wangi maksimal",
            //                         textAlign: TextAlign.left,
            //                         maxLines: 2,
            //                         style: TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 13,
            //                             color: Colors.white),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Row(children: [
            //                 const Padding(
            //                   padding: EdgeInsets.only(top: 0, left: 30),
            //                   child: SizedBox(
            //                     width: 155,
            //                     child: Text(
            //                       "Solusi untuk kebutuhan mendadak anda",
            //                       textAlign: TextAlign.right,
            //                       maxLines: 2,
            //                       style: TextStyle(
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 13,
            //                           color: Colors.white),
            //                     ),
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 0, left: 20),
            //                   child: Container(
            //                     height: 105,
            //                     width: 105,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(20),
            //                       color: Colors.white,
            //                       boxShadow: [
            //                         BoxShadow(
            //                           color: Colors.grey.withOpacity(0.5),
            //                           spreadRadius: 2,
            //                           blurRadius: 7,
            //                           offset: const Offset(0, 3),
            //                         ),
            //                       ],
            //                     ),
            //                     child: Stack(
            //                       children: [
            //                         InkWell(
            //                           child: Padding(
            //                             padding:
            //                                 const EdgeInsets.only(bottom: 15),
            //                             child: Align(
            //                               alignment: Alignment.center,
            //                               child: Image.asset(
            //                                 'asset/images/lightning.png',
            //                                 height: 60,
            //                                 width: 60,
            //                               ),
            //                             ),
            //                           ),
            //                           onTap: () {
            //                             Navigator.push(
            //                               context,
            //                               MaterialPageRoute(
            //                                   builder: (context) =>
            //                                       detail_kilat(data: paketList[1],)),
            //                             );
            //                           },
            //                         ),
            //                         Padding(
            //                           padding: const EdgeInsets.only(
            //                               top: 80, left: 20),
            //                           child: Text(
            //                             paketList[1].namaPkt!, // Tampilkan nama paket Reguler dari model
            //                             style: const TextStyle(
            //                                 fontWeight: FontWeight.bold),
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ]),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ]);
          }
        },
      ),
    );
  }
}
