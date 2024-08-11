import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "suradetails";

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(model.index);
    }
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
              model.name,
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
                 " ${verses[index]}(${index+1})",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inder(
                  fontSize: 25,
                ),);
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ],
    );
  }

  loadSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    print(suraLines);
    verses = suraLines;
    setState(() {});
  }
}
