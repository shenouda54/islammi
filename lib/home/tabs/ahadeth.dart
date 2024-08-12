import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/ahadeth_model.dart';
import 'package:isslami/hadeth_details.dart';

class AhadthTub extends StatefulWidget {
  AhadthTub({super.key});

  @override
  State<AhadthTub> createState() => _AhadthTubState();
}

class _AhadthTubState extends State<AhadthTub> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/ahadeth_image.png.png",
          height: 227,
        ),
        Table(
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              Text(
                "الأحاديث ",
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ])
          ],
        ),

        // Expanded(
        //   child: ListView.builder(
        //     itemBuilder: (context,index){
        //       return Text(
        //         allAhadeth[index].title,
        //         textAlign: TextAlign.center,
        //         style: GoogleFonts.inder(
        //           fontSize: 25,
        //           fontWeight: FontWeight.w400,
        //         ),
        //       );
        //     },
        //     itemCount: allAhadeth.length,
        //   ),
        // ),
        Expanded(
          child: ListView.separated(
    separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                  arguments: allAhadeth[index]
                  );
                  },
                child: Text(allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  
                  style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w600),),
              );
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }



  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadethOne = ahadeth[i];

        List<String> hadethLines = hadethOne.trim().split("\n");

        String title = hadethLines[0];

        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(content, title);
        allAhadeth.add(hadethModel);
        print(hadethModel.title);
      }
      setState(() {});
    });
  }
}
