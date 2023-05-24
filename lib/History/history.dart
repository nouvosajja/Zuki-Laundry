import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zuki_laundry/History/dalamproses.dart';
import '../Home/homepage.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Container(height: 140, width: double.infinity),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
            ]),
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 40),
                  child: Container(
                    width: 290,
                    child: Text(
                      "Reguler", textAlign: TextAlign.left, maxLines: 3, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160, left: 40),
                  child: Container(
                    width: 290,
                    child: Text(
                      "3 kg", textAlign: TextAlign.left, maxLines: 3, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 40),
                  child: Container(
                    width: 290,
                    child: Text(
                      "Kilat", textAlign: TextAlign.left, maxLines: 3, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250, left: 40),
                  child: Container(
                    width: 290,
                    child: Text(
                      "0 Kg", textAlign: TextAlign.left, maxLines: 3, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 340, left: 30),
                  child: Container(
                    width: 180,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue),
                      onPressed: (){},
                      child: Text("Dapatkan Promo",
                      style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 16
                      ),
                    ),
                      )
                  ),
                ),
          ])
        ])),
      ),
    );
  }
}
