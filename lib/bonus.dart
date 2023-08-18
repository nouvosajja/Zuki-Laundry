import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

const List<String> list = [
  'Pilih',
  'Bulan Ini',
  'Bulan lalu',
  'Dua Bulan lalu'
];

class Bonus extends StatefulWidget {
  const Bonus({Key? key}) : super(key: key);

  @override
  State<Bonus> createState() => _BonusState();
}

class _BonusState extends State<Bonus> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text(
          "Bonus",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Back button with black color
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
              padding: EdgeInsets.only(top: 60, left: 30),
              child: Text(
                "Tentukan bulan untuk mengambil bonus",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 180),
              child: InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reguler",
                        maxLines: 3,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20,),
                      CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 0.3,
                        center: Text(
                          "3 kg",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.purple,
                      ),
                    ],
                  ),
                  SizedBox(width: 60), // Add spacing between columns
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kilat",
                        maxLines: 3,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20,),
                      CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 0.0,
                        center: Text(
                          "0 kg",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 30),
              child: SizedBox(
                width: 180,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Dapatkan Bonus",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
