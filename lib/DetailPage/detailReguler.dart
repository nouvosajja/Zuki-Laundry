import 'package:flutter/material.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/Widgets/radio.global.dart';

class detail_reguler extends StatefulWidget {
  const detail_reguler({Key? key}) : super(key: key);

  @override
  State<detail_reguler> createState() => detail_regulerState();
}

class detail_regulerState extends State<detail_reguler> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            color: Colors.black,
            iconSize: 30,
          ),
          title: const Text(
            'Reguler',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(55),
            child: SizedBox(),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Color.fromRGBO(25, 164, 206, 1),
          ),
          width: double.infinity, // mengatur lebar maksimal
          height: double.infinity, // mengatur tinggi
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Column(children: [
                const Text(
                  'Silahkan pilih paket yang telah \nkami sediakan',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(
                    thickness: 3,
                    color: Colors.white,
                    indent: 30,
                    endIndent: 30,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Column(
                  children: [
                    const Center(
                      child: Text(
                        'Pakaian',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 21),
                    SizedBox(
                      height: 40,
                      width: 290,
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
                        const Spacer(),
                        const Text(
                          'Cuci Setrika / 3 hari : Rp. 12.000/kg',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                      width: 290,
                      child: Row(children: [
                        radio(
                          value: 3,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        const Spacer(),
                        const Text('Cuci  / 3 hari : Rp. 9.000/kg',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                      width: 290,
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
                        const Spacer(),
                        const Text(
                          'Setrika / 3 hari : Rp. 6.000/kg',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ]),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 21,
                ),
                Column(children: [
                  //make text pakaian
                  const Center(
                    child: Text(
                      'Lainnya',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 21),

                  SizedBox(
                    width: 290,
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
                      const Spacer(),
                      const Text(
                        'Sepatu : Rp. 12.000/kg',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ]),
                  ),

                  SizedBox(
                    height: 40,
                    width: 290,
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
                      const Spacer(),
                      const Text(
                        'Selimut : Rp. 12.000/kg',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ]),
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
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                ]),
              ]),
            ),
          ),
        ));
  }
}
