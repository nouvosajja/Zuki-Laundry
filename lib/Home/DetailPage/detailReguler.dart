import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/Widgets/paket.global.dart';
import 'package:zuki_laundry/model/paket_model.dart';
import 'package:zuki_laundry/model/price_model.dart';
import 'package:flutter/material.dart';
import 'package:zuki_laundry/Widgets/radio.global.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/order.dart';

import '../../model/user_model.dart';

class detail_reguler extends StatefulWidget {
  detail_reguler({super.key, required this.data});
  PaketModel? data;

  @override
  State<detail_reguler> createState() => detail_regulerState();
}

class detail_regulerState extends State<detail_reguler> {
  int? _value = 1;
  PriceModel? price;
  
  
  Future<List<PriceModel>> getPrice() async {
    final response = await http
        .get(Uri.parse('http://zukilaundry.bardiman.com/api/price/all'));
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
                                      price: priceList[0], selectedPackageIndex: 0,
                                    ),
                                  ),
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
                                      '${priceList[0].nama} ${priceList[0].waktu} \n: Rp.${priceList[0].harga.toString()}/kg',
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
                                          price: priceList[1], selectedPackageIndex: 1,)),
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
                                      '${priceList[1].nama} ${priceList[1].waktu} \n: Rp.${priceList[1].harga.toString()}/kg',
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
                                          price: priceList[2], selectedPackageIndex: 2,)),
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
                                      '${priceList[2].nama} ${priceList[2].waktu} \n: Rp.${priceList[2].harga.toString()}/kg',
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
                                          price: priceList[3], selectedPackageIndex: 3,)),
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
                                      '${priceList[3].nama} ${priceList[3].waktu} \n: Rp.${priceList[3].harga.toString()}/kg',
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
