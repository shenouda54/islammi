import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/home/tabs/ahadeth.dart';
import 'package:isslami/home/tabs/quran.dart';
import 'package:isslami/home/tabs/radio.dart';
import 'package:isslami/home/tabs/sebha.dart';
import 'package:isslami/home/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png.png",  width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill ,
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              "إسلامي",
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_quran.png.png")),
                  label: "",
                  backgroundColor: Color(0xffB7935F),
                ),//quranicon
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_sebha.png.png")),
                  label: "",
                  backgroundColor: Color(0xffB7935F),
                ),//sebhaicon
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_radio.png.png")),
                  label: "",
                  backgroundColor: Color(0xffB7935F),
                ),//radioicon
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_ahadeth.png.png")),
                  label: "",
                  backgroundColor: Color(0xffB7935F),
                ),//ahadethicon
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "",
                  backgroundColor: Color(0xffB7935F),
                ),//settingicon
              ],
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTub(),
    SebhaTub(),
    RadioTub(),
    AhadthTub(),
    SettingTub(),
  ];
}
