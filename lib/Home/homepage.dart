import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zuki_laundry/Chat/screen.dart';
import 'package:zuki_laundry/History/dalamProses.dart';
import 'package:zuki_laundry/History/riwayat.dart';
import 'package:zuki_laundry/Widgets/bubble.global.dart';
import 'package:zuki_laundry/Widgets/paket.global.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  List<Widget> widgetList = const [HomePage(), Riwayat(), Proses()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 0, width: double.infinity),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 240,
                            child: Text(
                              "Selamat datang di Zuki Laundry!",
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                    ])),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50),
            child: (Container(
              margin: const EdgeInsets.only(),
              child: Image.asset("asset/images/poster.png"),
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 30),
            child: SizedBox(
              width: 290,
              child: Text(
                " Tempat yang tepat untuk mencuci pakaian dengan cepat dan tetap menjaga kebersihan serta kualitas cucian yang optimal ",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const bubble(),
          const Paket()
        ])),
      ),
    );
  }
}
