import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/Home/DetailPage/Order/order.dart';
import 'package:zuki_laundry/model/paket_model.dart';
import 'package:zuki_laundry/model/price_model.dart';


class detail_kilat extends StatefulWidget {
  detail_kilat({super.key, required this.data});
  PaketModel? data;

  @override
  State<detail_kilat> createState() => _detail_kilatState();
}

class _detail_kilatState extends State<detail_kilat> {
  int? _value = 1;

  Future<List<PriceModel>> getPrice() async {
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
    return Scaffold(
        backgroundColor: Color.fromRGBO(25, 167, 206, 1),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
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
              List<PriceModel> priceList = snapshot
                  .data!; // Use snapshot.data to get the List<PaketModel>
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
                        height: 20,
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
                                      builder: (context) => Order(
                                            data: widget.data,
                                            price: priceList[5],
                                            selectedPackageIndex: 0,
                                          )),
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
                                        image: NetworkImage(
                                            'https://zukilaundry.bardiman.com/public/images/menu/cs.png'),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '${priceList[5].nama} ${priceList[5].waktu} \n: Rp.${priceList[5].harga.toString()}/kg',
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
                                      builder: (context) => Order(
                                            data: widget.data,
                                            price: priceList[6],
                                            selectedPackageIndex: 1,
                                          )),
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
                                        image: NetworkImage(
                                            'https://zukilaundry.bardiman.com/public/images/menu/cuci.png'),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '${priceList[6].nama} ${priceList[6].waktu} \n: Rp.${priceList[6].harga.toString()}/kg',
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
                                      builder: (context) => Order(
                                            data: widget.data,
                                            price: priceList[7],
                                            selectedPackageIndex: 2,
                                          )),
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
                                        image: NetworkImage(
                                            'https://zukilaundry.bardiman.com/public/images/menu/setrika.png'),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '${priceList[7].nama} ${priceList[7].waktu} \n: Rp.${priceList[7].harga.toString()}/kg',
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
                          SizedBox(
                            height: 20,
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
                                      builder: (context) => Order(
                                            data: widget.data,
                                            price: priceList[8],
                                            selectedPackageIndex: 3,
                                          )),
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
                                        image: NetworkImage(
                                            'https://zukilaundry.bardiman.com/public/images/menu/sepatu.png'),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '${priceList[8].nama} ${priceList[8].waktu} \n: Rp.${priceList[8].harga.toString()}/kg',
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
        ));
  }
}
