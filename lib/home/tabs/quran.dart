import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/my_theme_data.dart';
import 'package:isslami/sura_details.dart';

import '../../sura_model.dart';

class QuranTub extends StatelessWidget {
  QuranTub({super.key});

  @override
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 80,),

        Image.asset(
          "assets/images/quran_image.png.png",
          height: 227,
        ),
        Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                Text(
                  "إسم السورة",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                // Text(
                //   "إسم السورة",
                //   textAlign: TextAlign.center,
                //   style: GoogleFonts.elMessiri(
                //       fontSize: 25, fontWeight: FontWeight.w600),
                // ),
              ],
            )
          ],
        ),

        // Expanded(
        //   child: ListView.separated(
        //       itemBuilder: (context, index) {
        //         (
        //           nameSura: suraNames[index],
        //           index: index,
        //         );
        //       },
        //       separatorBuilder: (context, index) {
        //         return Divider(
        //           thickness: 2,
        //         );
        //       },
        //       itemCount: suraNames.length),
        // )
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                indent: 90,
                endIndent: 90,
                thickness: 1,
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                      arguments: SuraModel(suraNames[index], index));
                },
                child: Text(
                  suraNames[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inder(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}
