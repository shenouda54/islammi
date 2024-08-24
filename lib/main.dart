import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isslami/home/tabs/splash.dart';
import 'package:isslami/my_theme_data.dart';
import 'package:isslami/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'hadeth_details.dart';
import 'home/home.dart';
import 'sura_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => MyProvider(),
      ),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
      themeMode: provider.mode,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
