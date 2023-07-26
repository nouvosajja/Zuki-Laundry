import 'package:flutter/material.dart';

class gantiPass extends StatefulWidget {
  const gantiPass({super.key});

  @override
  State<gantiPass> createState() => _gantiPassState();
}

class _gantiPassState extends State<gantiPass> {
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
                  Container(
                    padding: EdgeInsets.fromLTRB(17, 40, 17, 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        child: const Icon(Icons.arrow_back_ios,
                                            size: 40,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Ganti Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(
                            'Password Lama',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              color: Color(0xff515151),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(13, 0, 0, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Masukkan Password lama',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(
                            'Password baru',
                            style: TextStyle(
                              fontSize: 21.5,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              color: Color(0xff515151),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(13, 0, 0, 50),
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Masukkan Password Baru',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 129, 252),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 155,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xff00a3ff),
                                borderRadius: BorderRadius.circular(27),
                              ),
                              child: Center(
                                child: Text(
                                  'Verifikasi',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                width: 65,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'Zuki Laundry',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                width: 65,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
