import 'package:flutter/material.dart';
import 'package:zuki_laundry/Widgets/radio.global.dart';
import 'package:zuki_laundry/beforeLogin.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/model/price_model.dart';

class detail_reguler_guest extends StatefulWidget {
  const detail_reguler_guest({Key? key}) : super(key: key);

  @override
  State<detail_reguler_guest> createState() => detail_regulerState();
}

class detail_regulerState extends State<detail_reguler_guest> {
  int? _value = 1;

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

            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                  iconSize: 30,
                ),
                title: const Text(
                  'Reguler',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(55),
                  child: SizedBox(),
                ),
              ),
              body: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          'Silahkan pilih paket yang telah \nkami sediakan',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
                        const SizedBox(
                          height: 21,
                        ),
                        Column(
                          children: [
                            const Center(
                              child: Text(
                                'Pakaian',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 21),
                            SizedBox(
                              height: 40,
                              width: 290,
                              child: Row(
                                children: [
                                  RadioWidget(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Toggle the _value between null and selected value
                                        _value = _value == value ? null : value;
                                      });
                                    },
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${regulerPackages[0].waktu} : Rp. ${regulerPackages[0].harga}',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 290,
                              child: Row(
                                children: [
                                  RadioWidget(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Toggle the _value between null and selected value
                                        _value = _value == value ? null : value;
                                      });
                                    },
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${regulerPackages[1].waktu} : Rp. ${regulerPackages[1].harga}',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 290,
                              child: Row(
                                children: [
                                  RadioWidget(
                                    value: 3,
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Toggle the _value between null and selected value
                                        _value = _value == value ? null : value;
                                      });
                                    },
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${regulerPackages[2].waktu} : Rp. ${regulerPackages[2].harga}',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Column(
                          children: [
                            const Center(
                              child: Text(
                                'Lainnya',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 21),
                            SizedBox(
                              width: 290,
                              child: Row(
                                children: [
                                  RadioWidget(
                                    value: 4,
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Toggle the _value between null and selected value
                                        _value = _value == value ? null : value;
                                      });
                                    },
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${regulerPackages[3].waktu} : Rp. ${regulerPackages[3].harga}',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 40,
                            //   width: 290,
                            //   child: Row(
                            //     children: [
                            //       RadioWidget(
                            //         value: 5,
                            //         groupValue: _value,
                            //         onChanged: (int? value) {
                            //           setState(() {
                            //             // Toggle the _value between null and selected value
                            //             _value = _value == value ? null : value;
                            //           });
                            //         },
                            //       ),
                            //       const Spacer(),
                            //       Text(
                            //         '${regulerPackages[4].waktu} : Rp. ${regulerPackages[4].harga}',
                            //         style: TextStyle(
                            //             color: Colors.white, fontSize: 15),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 60, left: 38, right: 38),
                              child: SizedBox(
                                height: 55,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const before_login()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Pesan',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
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
            );
          }
        });
  }
}
