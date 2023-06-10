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
                  Container(height: 140, width: double.infinity),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const []),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios,
                            size: 40, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48, left: 95),
                    child: Container(
                      width: 290,
                      child: const Text(
                        "Ganti Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
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
