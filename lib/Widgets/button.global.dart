// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:zuki_laundry/bottomnav.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => bottom_nav()
                                  ),
                               );
                              },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: Color(0xff21579C),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          
          ],
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          ),
          
      ),
    );
  }
}