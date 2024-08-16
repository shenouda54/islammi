import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTub extends StatelessWidget {
  const SebhaTub({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 105, left: 38),
              child: Image.asset(
                "assets/images/head_of_seb7a.png.png",
                width: 73,
                height: 105,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(178.0),
              child: Image.asset(
                "assets/images/body_of_seb7a.png.png",
                width: 232,
                height: 234,
              ),
            )
          ],
        ),
        Text(
          "عدد التسبيحات",
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            height: 4,
          ),
        ),
      ],
    );
  }
}
