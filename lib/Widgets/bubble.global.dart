import 'package:flutter/material.dart';

class bubble extends StatelessWidget {
  const bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 380,
        ),
        Positioned(
              top: 20,
              left: 155,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 30,
              left: 170,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 190,
              left: 35,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 210,
              left: 65,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble3.png"),
                )
            ),

            

            
            

        Positioned(
          top: 45,
          left: 40,
          child:  Container(
          width: 160, // Menyesuaikan ukuran lingkaran
          height: 160, // Menyesuaikan ukuran lingkaran
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(25, 164, 206, 1),
          ),
          child: const Center(
            child: Text(
                    'Kilat\nCuci Setrika / 12 jam :\nRp . 20.000/Kg\n uci Setrika / 1 hari :\nRp . 17.000/Kg\nSetrika / 1 hari :\nRp . 10.000/Kg',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),),

        Positioned(
              top: 170,
              left: 200,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble3.png"),
                )
            ),

            Positioned(
              top: 140,
              left: 220,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 145,
              left: 260,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 340,
              left: 300,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 350,
              left: 265,
                child: Container(
                  margin: const EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

        Positioned(
          top: 180,
          left: 190,
          child:  Container(
          width: 160, // Menyesuaikan ukuran lingkaran
          height: 160, // Menyesuaikan ukuran lingkaran
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(25, 164, 206, 1),
          ),
          child: const Center(
            child: Text(
                    'Reguler\nCuci Setrika / 3 hari :\nRp . 12.000/Kg\n Cuci Setrika / 5 hari :\nRp . 9.000/Kg\nCuci Setrika / 7 hari :\nRp . 6.000/Kg',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),)
      ],
    );
  }
}