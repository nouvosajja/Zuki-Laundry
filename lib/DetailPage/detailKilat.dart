import 'package:flutter/material.dart';
import 'package:zuki_laundry/Widgets/radio.global.dart';
import 'package:zuki_laundry/bottomnav.dart';

class detail_kilat extends StatefulWidget {
  const detail_kilat({super.key});

  @override
  State<detail_kilat> createState() => _detail_kilatState();
}

class _detail_kilatState extends State<detail_kilat> {
    int _value = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          color: Colors.black,
          iconSize: 30,
        ),
        title: Text(
          'Kilat',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: SizedBox(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Color.fromRGBO(25, 164, 206, 1),
        ),
        width: double.infinity, // mengatur lebar maksimal
        height: double.infinity, // mengatur tinggi
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                Text(
                  'Silahkan pilih paket yang telah \nkami sediakan',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
                SizedBox(
                  height: 21,
                  ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Pakaian',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 21),
            
                    Container(
                      height: 40,
                      width: 250,
                      child: Row(children: [
                        radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Spacer(),
                        const Text('Cuci Setrika / 12 jam : Rp. 20.000/kg', style: TextStyle(color: Colors.white, fontSize: 12), ),
                      ]),
                    ),
            
                    Container(
                      height: 40,
                      width: 250,
                      child: Row(children: [
                        radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Spacer(),
                        const Text('Cuci Setrika / 1 hari : Rp. 17.000/kg', style: TextStyle(color: Colors.white, fontSize: 12)),
                      ]),
                    ),
            
                    Container(
                      height: 40,
                      width: 250,
                      child: Row(children: [
                        radio(
                          value: 4,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Spacer(),
                        const Text('Setrika / 1 hari : Rp. 10.000/kg', style: TextStyle(color: Colors.white, fontSize: 12),),
                      ]),
                    ),
                  ],
                ),
            
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 38, right: 38),
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const bottom_nav()),
                        );
                      },
                      child: Text(
                        'Pesan',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
            
                SizedBox(
                  height: 21,
                  ),
                Column(
                  children: [
                    //make text pakaian
                    Center(
                      child: Text(
                        'Lainnya',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 21),
            
                    Container(
                      width: 250,
                      child: Row(children: [
                        radio(
                          value: 5,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Spacer(),
                        const Text('Sepatu : Rp. 12.000/kg', style: TextStyle(color: Colors.white, fontSize: 12), ),
                      ]),
                    ),

                    Container(
                      height: 40,
                      width: 250,
                      child: Row(children: [
                        radio(
                          value: 6,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Spacer(),
                        const Text('Selimut : Rp. 12.000/kg', style: TextStyle(color: Colors.white, fontSize: 12), ),
                      ]),
                    ),

                
                SizedBox(
                  height: 21,
                  ),
                  
                //make text notes: with left padding 38
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Notes : Proses 3-5 hari \n(Express Biaya dikalikan 2x lipat)',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                    
            
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 38, right: 38),
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const bottom_nav()),
                        );
                      },
                      child: Text(
                        'Pesan',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                  
              ]),
              ]
                      ),
            ),
        ),
      ),
      )
    );
  }
}