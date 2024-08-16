import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/ahadeth_model.dart';
import 'package:isslami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadethScreen';

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProvider>(context);

    return Stack(children: [
      Image.asset(
        provider.mode == ThemeMode.light
            ? "assets/images/background.png.png"
            : "assets/images/backgrounddark.png.png",
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
                ),
              );
            },
            itemCount: model.content.length,
          ),
        ),
      ),
    ]);
  }
}
