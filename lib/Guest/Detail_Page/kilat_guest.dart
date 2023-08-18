import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/beforeLogin.dart';
import 'package:zuki_laundry/model/paket_model.dart';
import 'package:zuki_laundry/model/price_model.dart';

import 'package:flutter/material.dart';


class detail_kilat_guest extends StatefulWidget {
    detail_kilat_guest({super.key, required this.data});
  PaketModel? data;

  @override
  State<detail_kilat_guest> createState() => detail_kilat_guestState();
}

class detail_kilat_guestState extends State<detail_kilat_guest> {
  int? _value = 1;
  PriceModel? price;
  Future<List<PriceModel>> getPrice() async {
    final response =
        await http.get(Uri.parse('http://zukilaundry.bardiman.com/api/price/all'));
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => PriceModel.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data from API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 167, 206, 1),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            widget.data!.namaPkt!,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(55),
            child: SizedBox(),
          ),
        ),
        body: FutureBuilder<List<PriceModel>>(
          future: getPrice(),
          builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final packages = snapshot.data ?? []; // Use snapshot.data to get the List<PaketModel>
                        final kilatPackages =
                packages.where((package) => package.paketId == '2').toList();
            return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Column(children: [
                const Text(
                  'Silahkan pilih paket yang telah \nkami sediakan',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(
                    thickness: 3,
                    color: Colors.black,
                    indent: 30,
                    endIndent: 30,
                  ),
                ),
                const SizedBox(
                  height: 20  ,
                ),
                Column(
                  children: [
                    const Center(
                      child: Text(
                        'Pakaian',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => before_login()),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('asset/images/cs.png'),
                                  )),
                            ),
                            Center(
                              child: Text(
                                '${kilatPackages[0].waktu} ${kilatPackages[0].nama} \n : Rp ${kilatPackages[0].harga}/kg',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => before_login()),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('asset/images/cuci.png'),
                                  )),
                            ),
                            Center(
                              child: Text(
                               '${kilatPackages[1].waktu} ${kilatPackages[1].nama} \n : Rp ${kilatPackages[1].harga}/kg',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => before_login()),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('asset/images/setrika.png'),
                                  )),
                            ),
                            Center(
                              child: Text(
                                '${kilatPackages[2].waktu} ${kilatPackages[2].nama} \n : Rp ${kilatPackages[2].harga}/kg',
                                // 'Setrika / 3 hari \n: Rp 6.000/kg',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        'Lainnya',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => before_login()),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('asset/images/sepatu.png'),
                                  )),
                            ),
                            Center(
                              child: Text(
                                '${kilatPackages[3].waktu} ${kilatPackages[3].nama} \n : Rp ${kilatPackages[3].harga}/kg',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        );
          }
        },
        )
        );
  }
}
