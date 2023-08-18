import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuki_laundry/Widgets/paket.global.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/model/login_model.dart';
import 'package:zuki_laundry/model/price_model.dart';
import 'package:http/http.dart' as http;
import 'model/paket_model.dart';

class Order extends StatefulWidget {
  Order({Key? key, required this.data, required this.price}) : super(key: key);
  PaketModel? data;
  PriceModel? price;

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  


Future<void> postData() async {
   SharedPreferences pref = await SharedPreferences.getInstance();
    String token = pref.getString("token") ?? "";
    Future.delayed(Duration(seconds: 3), () async {
      final url = Uri.parse("http://zukilaundry.bardiman.com/api/order");
      // Create the request body
      final Map<String, dynamic> requestBody = {
      "user_id": "3",
      "paket_id": "1",
      "price_id": "1",
        // Add more fields as necessary
      };

       final Map<String, String> requestHeader = {
        'Authorization': 'Bearer ${token}',
      };

      // Make the POST request
      final response =
          await http.post(url, body: requestBody, headers: requestHeader);

      // Handle the response
      if (response.statusCode == 200) {
        print('POST Data Transaction request was successful.');
        print('Response: ${requestBody}');
        // x
      } else {
        print('POST Data Transaction request failed.');
        print('Status code: ${response.statusCode}');
      }
    });
    // Define the API endpoint URL
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
          iconSize: 30,
        ),
        title: Text(
          "Order " + widget.data!.namaPkt!,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Color.fromRGBO(25, 167, 206, 1),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.price!.nama,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('asset/images/cuci.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Waktu pengerjaan: ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              widget.price!.waktu,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              "Harga/kg: ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 53),
                            Text(
                              "Rp." + widget.price!.harga,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 70),
                child: SizedBox(
                  width: 240,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Kami akan mencuci pakaian anda dalam minimal 3 hari (yang menghasilkan pakaian yang bersih)",
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 38, right: 38),
                child: SizedBox(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => bottom_nav()),
                      // );
                      postData();
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
        ),
      ),
    );
  }
}
