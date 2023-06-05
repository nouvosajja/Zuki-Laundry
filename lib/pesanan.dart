import 'package:flutter/material.dart';
import 'package:zuki_laundry/bottomnav.dart';
import 'package:zuki_laundry/pembayaran.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({super.key});

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 25),
            child : 
            Row(
                children: [
                  IconButton(
                    icon: Icon(
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
                  SizedBox(width: 25),
                  Text(
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
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Reguler',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tanggal Pengambilan',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: [
                Text(
                  'Diambil',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  'Selesai',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: [
                Text(
                  '08 Mei 2023',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  '15 Mei 2023',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          // make text info pesanan
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Info Pesanan',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Total Berat',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '3 Kg',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Total Harga',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rp 36.000',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
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
            padding: const EdgeInsets.only(top: 5, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Menunggu Pembayaran',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pembayaran(),
                    ),
                  );
                },
                child: Text(
                  'Bayar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(25, 164, 206, 1),
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
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