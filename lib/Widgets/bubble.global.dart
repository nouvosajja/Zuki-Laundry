import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/model/paket_model.dart';
import 'package:zuki_laundry/model/price_model.dart';

class bubble extends StatefulWidget {
  const bubble({super.key});

  @override
  State<bubble> createState() => _bubbleState();
}

Future<List<PriceModel>> fetchPackages() async {
  final response = await http
      .get(Uri.parse('http://zukilaundry.bardiman.com/api/price/all'));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return (data as List).map((json) => PriceModel.fromJson(json)).toList();
  } else {
    throw Exception('Gagal memuat data paket dari API');
  }
}

class _bubbleState extends State<bubble> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PriceModel>>(
        future: fetchPackages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
        child: CircularProgressIndicator(),
      );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final packages = snapshot.data ?? [];

            // Filter paket reguler dengan paketId = 1
            final regulerPackages =
                packages.where((package) => package.paketId == '1').toList();

            // Filter paket kilat dengan paketId = 2
            final kilatPackages =
                packages.where((package) => package.paketId == '2').toList();

            return Stack(
              children: [
                Container(
                  height: 380,
                ),
                Positioned(
                    top: 20,
                    left: 155,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble2.png"),
                    )),
                Positioned(
                    top: 30,
                    left: 170,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble1.png"),
                    )),
                Positioned(
                    top: 190,
                    left: 35,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble1.png"),
                    )),
                Positioned(
                    top: 210,
                    left: 65,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble3.png"),
                    )),
                Positioned(
                  top: 45,
                  left: 40,
                  child: Container(
                    width: 160, // Menyesuaikan ukuran lingkaran
                    height: 160, // Menyesuaikan ukuran lingkaran
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(25, 164, 206, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Reguler \nCuci Setrika / ${regulerPackages[0].waktu} hari :\nRp. ${regulerPackages[0].harga} \n Cuci / ${regulerPackages[1].waktu} hari :\nRp. ${regulerPackages[1].harga} \n Setrika / ${regulerPackages[2].waktu} hari :\nRp. ${regulerPackages[2].harga}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 170,
                    left: 200,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble3.png"),
                    )),
                Positioned(
                    top: 140,
                    left: 220,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble1.png"),
                    )),
                Positioned(
                    top: 145,
                    left: 260,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble2.png"),
                    )),
                Positioned(
                    top: 340,
                    left: 300,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble2.png"),
                    )),
                Positioned(
                    top: 350,
                    left: 265,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble1.png"),
                    )),
                Positioned(
                  top: 180,
                  left: 190,
                  child: Container(
                    width: 160, // Menyesuaikan ukuran lingkaran
                    height: 160, // Menyesuaikan ukuran lingkaran
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(25, 164, 206, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Kilat  \nCuci Setrika / ${kilatPackages[0].waktu} jam :\nRp. ${kilatPackages[0].harga} \nCuci / ${kilatPackages[1].waktu} hari :\nRp. ${kilatPackages[1].harga} \nSetrika / ${kilatPackages[2].waktu} hari :\nRp. ${kilatPackages[2].harga}',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            );
          }
        });
  }
}
