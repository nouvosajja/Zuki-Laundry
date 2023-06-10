import 'package:flutter/material.dart';
import 'package:zuki_laundry/Widgets/radio.global.dart';
import 'package:zuki_laundry/beforeLogin.dart';

class detail_kilat_guest extends StatefulWidget {
  const detail_kilat_guest({super.key});

  @override
  State<detail_kilat_guest> createState() => _detail_kilatState();
}

class _detail_kilatState extends State<detail_kilat_guest> {
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
            'Kilat',
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
                          'Cuci Setrika / 12 jam : Rp. 20.000/kg',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                      width: 290,
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
                        const Spacer(),
                        const Text('Cuci / 12 jam : Rp. 17.000/kg',
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
                          'Setrika / 1 hari : Rp. 10.000/kg',
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
                        'Sepatu : Rp. 17.000/kg',
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
                        'Selimut : Rp. 25.000/kg',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ]),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 38, right: 38),
                    child: SizedBox(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const before_login()),
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
