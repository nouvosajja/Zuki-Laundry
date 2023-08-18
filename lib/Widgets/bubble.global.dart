import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
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
            return const Center(
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
                  height: 420,
                ),
                Positioned(
                    top: 160,
                    
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/F.png"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 224, left: 15),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/R02.png', // Replace with your actual image path
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${regulerPackages[2].nama}\n / ${regulerPackages[2].waktu} : \nRp. ${regulerPackages[2].harga}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 6,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/E.png"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/R01.png', // Replace with your actual image path
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${regulerPackages[0].nama}\n / ${regulerPackages[0].waktu} : \nRp. ${regulerPackages[0].harga}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 85,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/F.png"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 140),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/R0.png', // Replace with your actual image path
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${regulerPackages[1].nama}\n / ${regulerPackages[1].waktu} : \nRp. ${regulerPackages[1].harga}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 105, left: 60),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/Ellipse.png', // Replace with your actual image path
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            "Reguler",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 100,
                    left: 300,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble2.png"),
                    )),
                Positioned(
                    top: 90,
                    left: 260,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble1.png"),
                    )),
                Positioned(
                    top: 115,
                    left: 240,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble3.png"),
                    )),
                    Positioned(
                    top: 260,
                    left: 115,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/F.png"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 325, left: 110),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/R02.png', // Replace with your actual image path
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${kilatPackages[2].nama}\n / ${kilatPackages[2].waktu} : \nRp. ${kilatPackages[2].harga}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 280,
                    left: 200,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/E.png"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 350, left: 250),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/R01.png', // Replace with your actual image path
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${kilatPackages[1].nama}\n / ${kilatPackages[1].waktu} : \nRp. ${kilatPackages[1].harga}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 150,
                    left: 200,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/F.png"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 125, left: 250),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/R0.png', // Replace with your actual image path
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${kilatPackages[0].nama}\n / ${kilatPackages[0].waktu} : \nRp. ${kilatPackages[0].harga}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 180),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/images/Ellipse.png', // Replace with your actual image path
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            "Kilat",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 310,
                    left: 40,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble2.png"),
                    )),
                Positioned(
                    top: 320,
                    left: 60,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble1.png"),
                    )),
                Positioned(
                    top: 330,
                    left: 25,
                    child: Container(
                      margin: const EdgeInsets.only(),
                      child: Image.asset("asset/images/bubble3.png"),
                    )),
              ],
            );
          }
        });
  }
}
