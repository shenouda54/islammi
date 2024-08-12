import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/ahadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadethScreen';

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
      Image.asset(
      "assets/images/background.png.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ),
       Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            model.title,
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
         body: Card(
           color: Color(0xffc4b9a3),
           shape: BorderDirectional(start: BorderSide(width: 1)),
           margin: EdgeInsets.all(12),
           child: ListView.builder(
             itemBuilder: (context, index) {
               return Text(
                 model.content[index],
                 textDirection: TextDirection.rtl,
                 textAlign: TextAlign.center,
                 style: GoogleFonts.inder(
                   fontSize: 25,
                 ),);
             },
             itemCount:model.content.length ,
           ),
         ),
      ),
    ]
    );
  }
}
