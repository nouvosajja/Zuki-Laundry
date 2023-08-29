import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/History/Proses/Pembayaran/pesanan.dart';
import 'package:zuki_laundry/model/getorder_model.dart';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/model/price_model.dart';
import 'package:zuki_laundry/model/user_model.dart';

class Proses extends StatefulWidget {
  const Proses({super.key});

  @override
  State<Proses> createState() => _ProsesState();
}

class _ProsesState extends State<Proses> {
  UserModel? user;
  GetOrder? transactions;
  PriceModel? price;
  bool isloading = false;

  Future getorder() async {
    final url = 'http://zukilaundry.bardiman.com/api/filter/?user_id=3';

    final SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.getString('token')!;

    try {
      final response = await http.get(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });

      print('status code : ${response.statusCode}');

      if (response.statusCode == 200) {
        print(url);
        print(response.body);
        GetOrder model = GetOrder.fromJson(json.decode(response.body));
        isloading = true;
        return model;
      } else {
        throw Exception("Failed to fetch data from API");
      }
    } catch (e) {
      print(e.toString());
    }
  }


  Future getprofil() async {
    const url = 'http://zukilaundry.bardiman.com/api/user';

    print('-----------user-------------');

    //call token from set pref
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.getString('token')!;

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      print('token : $token');
      print('status code : ${response.statusCode}');

      if (response.statusCode == 200) {
        print(url);

        UserModel model = UserModel.fromJson(json.decode(response.body));
        return model;
      } else {
        throw Exception("Failed to fetch data from API");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    getorder().then((value) {
      setState(() {
        transactions = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          isloading
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: transactions!.transactions!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pesanan(
                                    transactions:
                                        transactions!.transactions![index],
                                  )),
                        );
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(25, 164, 206, 1),
                        ),
                        width: 330, // mengatur lebar maksimal
                        height:
                            195, // mengatur tinggi// mengatur warna background
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      transactions!
                                          .transactions![index].namaPaket!,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 100),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Siap diambil",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "08 Mei",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25, left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  transactions!.transactions![index].berat! +
                                      " Kg",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, right: 20, left: 20),
                              child: Container(
                                width: 292,
                                height: 2,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Rp " +
                                          transactions!
                                              .transactions![index].totalHarga!,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      transactions!
                                          .transactions![index].statusPesanan!,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
              : Center(child: CircularProgressIndicator()),
          SizedBox(height: 20)
        ],
      )),
    );
  }
}
