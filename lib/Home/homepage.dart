import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zuki_laundry/Chat/screen.dart';
import 'package:zuki_laundry/History/dalamProses.dart';
import 'package:zuki_laundry/History/riwayat.dart';
import 'package:zuki_laundry/Widgets/bubble.global.dart';
import 'package:zuki_laundry/Widgets/paket.global.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    HomePage(),
    Riwayat(),
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
          Container(
          height: 0, width: double.infinity),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
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

              Padding(
                padding: const EdgeInsets.only(left: 37),
                child: InkWell(
                  child: Container(
                
                  alignment: Alignment.topRight,
                      height: 35,
                      width: 35,
                      child: Icon(IconlyLight.chat, size: 30,),
                      
                      ),
                      onTap: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => chat_screen()
                                    ),
                                 );
                    },
                ),
              ),
                  
              ],
            ),

          ]
          )

        ),


          ]

      ),
            Padding(padding: EdgeInsets.only(left: 30, top: 50),
              child: (
                  Container(
                    margin: EdgeInsets.only(),
                    child: Image.asset("asset/image/zuki.png"),
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25, left: 30),
              child: Container(
                width: 290,
                child: Text(
                  " Tempat yang tepat untuk mencuci pakaian dengan cepat dan tetap menjaga kebersihan serta kualitas cucian yang optimal ", textAlign: TextAlign.center, maxLines: 3, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            bubble(),
            Paket()
            ]
        )
      ),
    ),
    );
  }
}
