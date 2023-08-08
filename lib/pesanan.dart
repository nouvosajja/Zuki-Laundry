import 'package:flutter/material.dart';
import 'package:zuki_laundry/pembayaran.dart';

List<String> get list {
  return ['GoPay', 'metode1', 'metode2', 'metode3'];
}

class Pesanan extends StatefulWidget {
  const Pesanan({super.key});

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  String selectedValue = "GoPay";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 25),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
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
                const SizedBox(width: 25),
                const Text(
                  'Detail Pesanan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 40),
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
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Ringkasan Pembayaran',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp36.000',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'bonus',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp0',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp36.000',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          // make text info pesanan
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tanggal Pemesanan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'Pengambilan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '08 Mei 2024',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'Pengantaran',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '15 Mei 2024',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              // make text diambil & selesai
              children: const [
                Text(
                  'Berat',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '3 kg',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
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
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 40),
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
          Container(
            // autogroupctyivMk (UTvPypu7bc1GzyxyJ3cTYi)
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 71,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(38, 12, 0, 0),
                  // gopayeHk (338:198)
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    ("asset/images/GoPay.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  // autogroup4nqtMxr (UTvQ6A3uAUmA6MomTQ4nqt)
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width: 150,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: DropdownButton(
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        // saldorp50000q7L (338:202)
                        margin: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                        width: double.infinity,
                        child: const Text(
                          'Saldo :  Rp 50.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 1,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pembayaran(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(25, 164, 206, 1),
                  minimumSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Bayar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
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
