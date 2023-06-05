import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const SizedBox(height: 140, width: double.infinity),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: []),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: const Icon(Icons.arrow_back_ios,
                              size: 40, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 48, left: 158),
                    child: SizedBox(
                      width: 290,
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 110, left: 20),
                    child: SizedBox(
                      child: Text(
                        "Nama",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 26),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 140, horizontal: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Masukkan nama baru',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 215, left: 20),
                    child: SizedBox(
                      child: Text(
                        "Nomor",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 26),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 240, horizontal: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Masukkan nomor lama',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 300, horizontal: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Masukkan nomor baru',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 400, left: 20),
                    // 7NN (24336601)
                    child: TextButton(
                      // autogroupymwdFjU (KNrT6XXztdhHp3gKWUyMWD)
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 163, 255, 1),
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Center(
                          child: Text(
                            'Ubah',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
