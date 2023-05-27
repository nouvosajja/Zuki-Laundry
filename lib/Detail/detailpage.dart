import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => detailState();
}

class detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          ),
          color: Color.fromRGBO(25, 164, 206, 1),
        ),
        width: double.infinity, // mengatur lebar maksimal
        height: double.infinity, // mengatur tinggi
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Silahkan pilih paket yang telah \nkami sediakan',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
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
                      padding: const EdgeInsets.only(top: 40, left: 50),
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Paket 1',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Rp. 10.000',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 50),
                      child: Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        )
                      ),
                    ),
                  ]
                ),
              ]
            ),
          ),
        ),
      ),


    );
  }
}