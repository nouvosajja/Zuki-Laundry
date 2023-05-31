import 'package:flutter/material.dart';

class bubble extends StatelessWidget {
  const bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
        ),

        Positioned(
              top: 20,
              left: 100,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 20,
              left: 120,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 160,
              left: 55,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 150,
              left: 20,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            

        Positioned(
          top: 35,
          left: 20,
          child:  Container(
          width: 120, // Menyesuaikan ukuran lingkaran
          height: 120, // Menyesuaikan ukuran lingkaran
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(25, 164, 206, 1),
          ),
          child: Center(
            child: Text(
                    'Kilat\nCuci Setrika / 12 jam :\nRp . 20.000/Kg\n uci Setrika / 1 hari :\nRp . 17.000/Kg\nSetrika / 1 hari :\nRp . 10.000/Kg',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),),

        Positioned(
              top: 160,
              left: 210,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 130,
              left: 220,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

            Positioned(
              top: 270,
              left: 300,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble2.png"),
                )
            ),

            Positioned(
              top: 275,
              left: 265,
                child: Container(
                  margin: EdgeInsets.only(),
                  child: Image.asset("asset/image/bubble1.png"),
                )
            ),

        Positioned(
          top: 150,
          left: 220,
          child:  Container(
          width: 120, // Menyesuaikan ukuran lingkaran
          height: 120, // Menyesuaikan ukuran lingkaran
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(25, 164, 206, 1),
          ),
          child: Center(
            child: Text(
                    'Reguler\nCuci Setrika / 3 hari :\nRp . 12.000/Kg\n uci Setrika / 5 hari :\nRp . 9.000/Kg\nCuci Setrika / 7 hari :\nRp . 6.000/Kg',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),)
      ],
    );
  }
}