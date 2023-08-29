import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/History/Proses/Pembayaran/pembayaran.dart';
import 'package:zuki_laundry/model/getorder_model.dart';
import 'package:zuki_laundry/model/price_model.dart';
import 'package:zuki_laundry/model/user_model.dart';
import 'package:http/http.dart' as http;

class Pesanan extends StatefulWidget {
 Pesanan({super.key, required this.transactions});
 Transactions transactions;

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  UserModel? user;
  PriceModel? price;
  bool isloading = false;

    Future getprice() async {
    final url = 'http://zukilaundry.bardiman.com/api/price/all';

    final SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.getString('token')!;

    try {
      final response = await http.get(
        Uri.parse(url),
        // headers: {
        //   'Content-Type': 'application/json',
        //   'Accept': 'application/json',
        //   'Authorization': 'Bearer $token',
        // }
      );

      print('status code : ${response.statusCode}');

      if (response.statusCode == 200) {
        print(url);
        print(response.body);
        PriceModel model = PriceModel.fromJson(json.decode(response.body));
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 25),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                ),
                const SizedBox(width: 25),
                const Text(
                  'Detail Pesanan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.transactions.namaPaket!,
                // widget.price.nama! + ' / ' + widget.price.harga!,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(25, 164, 206, 1),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.transactions.namePrices! + "/" + widget.transactions.waktuPrice!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Ringkasan Pembayaran',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  "Rp " + widget.transactions.totalHarga!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: const [
                Text(
                  'bonus',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp0',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  "Rp " + widget.transactions.totalHarga!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          // make text info pesanan
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tanggal Pemesanan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'Pengambilan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '08 Mei 2024',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'Pengantaran',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '15 Mei 2024',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: [
                Text(
                  'Berat',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  widget.transactions.berat! + ' kg',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Status',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.transactions.statusPesanan!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pembayaran(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(25, 164, 206, 1),
                  minimumSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Bayar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}