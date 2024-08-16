import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/home/tabs/ahadeth.dart';
import 'package:isslami/home/tabs/quran.dart';
import 'package:isslami/home/tabs/radio.dart';
import 'package:isslami/home/tabs/sebha.dart';
import 'package:isslami/home/tabs/settings.dart';
import 'package:isslami/my_theme_data.dart';
import 'package:isslami/provider/my_provider.dart';
import 'package:provider/provider.dart';

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
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
         provider.mode==ThemeMode.light?
         "assets/images/background.png.png":
         "assets/images/backgrounddark.png.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "إسلامي",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_quran.png.png")),
                label: "",
              ), //quranicon
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_sebha.png.png")),
                label: "",
              ), //sebhaicon
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_radio.png.png")),
                label: "",
              ), //radioicon
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_ahadeth.png.png")),
                label: "",
              ), //ahadethicon
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ), //settingicon
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
