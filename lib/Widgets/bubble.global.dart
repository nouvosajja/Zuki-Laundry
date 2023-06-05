import 'package:flutter/material.dart';

class bubble extends StatelessWidget {
  const bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
        ),
        Positioned(
              top: 20,
              left: 120,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 20,
              left: 140,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 190,
              left: 65,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 205,
              left: 35,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble3.png"),
                )
            ),

            Positioned(
              top: 177,
              left: 45,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            

        Positioned(
          top: 45,
          left: 40,
          child:  Container(
          width: 140, // Menyesuaikan ukuran lingkaran
          height: 140, // Menyesuaikan ukuran lingkaran
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(25, 164, 206, 1),
          ),
          child: Center(
            child: Text(
                    'Kilat\nCuci Setrika / 12 jam :\nRp . 20.000/Kg\n uci Setrika / 1 hari :\nRp . 17.000/Kg\nSetrika / 1 hari :\nRp . 10.000/Kg',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),),

        Positioned(
              top: 155,
              left: 200,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble3.png"),
                )
            ),

            Positioned(
              top: 125,
              left: 220,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 130,
              left: 260,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 310,
              left: 300,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 320,
              left: 265,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

        Positioned(
          top: 170,
          left: 190,
          child:  Container(
          width: 140, // Menyesuaikan ukuran lingkaran
          height: 140, // Menyesuaikan ukuran lingkaran
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(25, 164, 206, 1),
          ),
          child: Center(
            child: Text(
                    'Reguler\nCuci Setrika / 3 hari :\nRp . 12.000/Kg\n Cuci Setrika / 5 hari :\nRp . 9.000/Kg\nCuci Setrika / 7 hari :\nRp . 6.000/Kg',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),)
      ],
    );
  }
}