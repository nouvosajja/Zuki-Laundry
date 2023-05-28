import 'package:flutter/material.dart';
import 'package:zuki_laundry/bottomnav.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => detailState();
}

class detailState extends State<detail> {
    late int selectedValue;

@override
  void initState() {
    super.initState();
    selectedValue = 0; // Inisialisasi nilai awal
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bottom_nav()),
                  );
                },
          color: Colors.black,
          iconSize: 30,
        ),
        title: Text(
          'Reguler',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: SizedBox(),
        ),
      ),
      

      body: 
      Container(
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
                Column(
      children: [
        //make text pakaian
        Center(
          child: Text(
            'Pakaian',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),


        RadioListTile<int>(
          value: 0,
          groupValue: selectedValue,
          onChanged: (int? value) {
            setState(() {
              selectedValue = value!;
            });
          },
          title: Text('Cuci Setrika / 3 hari : Rp. 12.000/kg'),
          activeColor: Colors.black,
          selected: selectedValue == 0,
        ),
        RadioListTile<int>(
          value: 1,
          groupValue: selectedValue,
          onChanged: (int? value) {
            setState(() {
              selectedValue = value!;
            });
          },
          title: Text('Cuci Setrika / 5 hari : Rp. 9.000/kg'),
          activeColor: Colors.black,
          selected: selectedValue == 1,
        ),
        RadioListTile<int>(
          value: 2,
          groupValue: selectedValue,
          onChanged: (int? value) {
            setState(() {
              selectedValue = value!;
            });
          },
          title: Text('Cuci Setrika / 7 hari : Rp. 6.000/kg'),
          activeColor: Colors.black,
          selected: selectedValue == 2,
        ),
        RadioListTile<int>(
          value: 3,
          groupValue: selectedValue,
          onChanged: (int? value) {
            setState(() {
              selectedValue = value!;
            });
          },
          title: Text('Setrika / 3 hari : Rp. 6.000/kg'),
          activeColor: Colors.black,
          selected: selectedValue == 3,
        ),
      ],
    ),

    //make button pesan
    Padding(
      padding: const EdgeInsets.only(top: 20, left: 38, right: 38),
      child: SizedBox(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const bottom_nav()),
            );
          },
          child: Text(
            'Pesan',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
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


                
              ]
            ),
          ),
        ),
      ),


    );
  }
}