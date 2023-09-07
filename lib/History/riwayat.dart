import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:zuki_laundry/model/getorderuser_model.dart';
import 'package:zuki_laundry/model/price_model.dart';
import 'package:zuki_laundry/model/user_model.dart';

// const List<String> list = [
//   'Pilih',
//   'Bulan Ini',
//   'Bulan lalu',
//   'Dua Bulan lalu'
// ];

class Riwayat extends StatefulWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  State<Riwayat> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Riwayat> {
  // String dropdownValue = list.first;
  UserModel? user;
  GetOrderUser? getueser;
  PriceModel? price;
  bool isloading = false;

  Future getorder() async {
    final url =
        'http://zukilaundry.bardiman.com/api/get-order-user?status_pesanan=dikonfirmasi';

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
        GetOrderUser model = GetOrderUser.fromJson(json.decode(response.body));
        isloading = true;
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
    super.initState();
      getorder().then((value) {
        setState(() {
          getueser = value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SingleChildScrollView(
      child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 40,
          ),
          isloading
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: getueser!.data!.length,
                  itemBuilder: (context, index) {
                    final transaction = getueser!.data![index];
                    // Display only unconfirmed transactions
                    if (transaction.status != "unpaid") {
                      return InkWell(
                        onTap: () {},
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
                              Container(
                                padding: EdgeInsets.symmetric(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          getueser!.data![index].namaPaket!,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 20),
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          getueser!
                                              .data![index].tanggalPesanan!,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    getueser!.data![index].berat! + " Kg",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Rp " + getueser!.data![index].totalHarga!,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, right: 20, left: 20),
                                child: Container(
                                  width: 292,
                                  height: 2,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 260),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Selesai",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Container(); // Exclude confirmed transactions
                    }
                  },
                )
              : Center(child: CircularProgressIndicator()),
          SizedBox(height: 20)
        ]),
      ),
    ));
  }
}
