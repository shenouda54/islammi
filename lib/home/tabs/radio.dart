import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTub extends StatelessWidget {
  const RadioTub({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [

            Padding(padding: const EdgeInsets.only(top: 232.0),
            child:   Image.asset(
              "assets/images/radio_image.png.png",
              width: 412,
              height: 222,
            ) ,
            )


          ],
        ),
        Text("إذاعة القرآن الكريم",
          textAlign: TextAlign.center,
          style:GoogleFonts.elMessiri(
            fontWeight: FontWeight.w600,
            fontSize:  25,
            height: 4,

          ),
        ),
        Image.asset("assets/images/Group 5.png", width: 205,
          height: 120,),

      ],

    );
  }
}
