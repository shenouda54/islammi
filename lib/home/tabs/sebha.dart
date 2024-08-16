import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/provider/my_provider.dart';

class SebhaTub extends StatefulWidget {
  const SebhaTub({super.key});

  @override
  State<SebhaTub> createState() => _SebhaTubState();
}

class _SebhaTubState extends State<SebhaTub> {
  int counter =0;
  double angle =0;
  List<String> Azkar=[
    "سبحان الله",
    "الحمد لله",
    "لا الله الا الله",
    " الله اكبر",
  ];
  int index=0;
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
              child: Transform.rotate(
                angle: angle,
                child: InkWell(
                  onTap:() {

                    OnTap();
                  },
                  child: Image.asset(
                    "assets/images/body_of_seb7a.png.png",
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              height: 4,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text("$counter"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text("${Azkar[index]} "),
            ),
          ),
        ),

      ],
    );
  }
  OnTap(){
    counter++;
    if(counter %33==0){
      index++;
      counter++;
      counter =0;
    }
    if(index == Azkar.length){
      index=0;
    }
    angle +=360/4;
setState(() {

});
  }
}
