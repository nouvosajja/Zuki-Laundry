import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zuki_laundry/Chat/screen.dart';
import 'package:zuki_laundry/History/dalamProses.dart';
import 'package:zuki_laundry/History/history.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    HomePage(),
    History(),
    Proses()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Stack(
          children: [
          Container(
          height: 140, width: double.infinity),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
              Row(
              children: [
                Container(
                  width: 240,
                  child: const Text(
                    "Selamat datang di Zuki Laundry!", maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),

                SizedBox(
                  width: 37,
                ),

              InkWell(
                child: Container(
              
                alignment: Alignment.topRight,
                    height: 35,
                    width: 35,
                    child: Icon(IconlyLight.chat, size: 30,),
                    
                    ),
                    onTap: () {
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChatScreen()
                                  ),
                               );
                  },
              ),
                  
              ],
            ),

          ]
          )

        ),


          ]

      ),
            Padding(padding: EdgeInsets.only(left: 30, top: 75),
              child: (
                  Container(
                    margin: EdgeInsets.only(),
                    child: Image.asset("asset/image/zuki.png"),
                    height: 300,
                    width: 300,
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 305, left: 30),
              child: Container(
                width: 290,
                child: Text(
                  " Tempat yang tepat untuk mencuci pakaian dengan cepat dan tetap menjaga kebersihan serta kualitas cucian yang optimal ", textAlign: TextAlign.center, maxLines: 3, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 385),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.blue,
                ),
                width: double.infinity, // mengatur lebar maksimal
                height: 315, // mengatur tinggi// mengatur warna background
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 250),
                  child: Center(
                    child: Text(
                      'Silahkan pilih paket yang telah kami sediakan',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440),
              child: Divider(
                thickness: 3,
                color: Colors.white,
                indent: 30,
                endIndent: 30,
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 470, left: 50),
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'asset/image/reguler.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ),
                        Padding(
                        padding: const EdgeInsets.only(top: 80, left: 27),
                        child: Text("Reguler", style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 460, left: 20),
                  child: Container(
                    width: 155,
                    child: Text(
                      "Solusi untuk kebutuhan mendadak anda", textAlign: TextAlign.left, maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 580, left: 30),
                  child: Container(
                    width: 155,
                    child: Text(
                      "Solusi untuk kebutuhan mendadak anda", textAlign: TextAlign.right, maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 575, left: 20),
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'asset/image/kilat.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 80, left: 35),
                            child: Text("Kilat", style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),


            ]

    )
            ]
    )
    ),
    ),

    );
  }
}
