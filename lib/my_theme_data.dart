import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 Color primaryColor=Color(0xffB7935F);
 Color primarydarkColor=Color(0xff141A2E);
 Color blackColor=Color(0xff242424);
 Color yellowColor=Color(0xffFACC1D);
class MyThemeData{

 static ThemeData lightTheme= ThemeData(
   primaryColor: primaryColor,
     dividerColor: primaryColor,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
     showSelectedLabels: false,
   backgroundColor: primaryColor,
   showUnselectedLabels: false,
       type: BottomNavigationBarType.fixed,
   selectedItemColor: blackColor,
   unselectedItemColor: Colors.white,
 ),
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
  centerTitle: true,
  backgroundColor: Colors.transparent,
  // titleTextStyle: ThemeData,
  ),
textTheme: TextTheme(
  bodyLarge:GoogleFonts.elMessiri(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
  bodyMedium:GoogleFonts.elMessiri(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
  bodySmall:GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
)
  );


 static ThemeData darkTheme= ThemeData(
     primaryColor: primarydarkColor,
     dividerColor: yellowColor,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       showSelectedLabels: false,
       backgroundColor: primarydarkColor,
       showUnselectedLabels: false,
       type: BottomNavigationBarType.fixed,
       selectedItemColor: yellowColor,
       unselectedItemColor: Colors.white,
     ),
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
       centerTitle: true,
       backgroundColor: Colors.transparent,
       // titleTextStyle: ThemeData,
     ),
     textTheme: TextTheme(

       bodyLarge:GoogleFonts.elMessiri(
         fontSize: 30,
         fontWeight: FontWeight.w700,
         color: Colors.white,
       ),
       bodyMedium:GoogleFonts.elMessiri(
         fontSize: 25,
         fontWeight: FontWeight.w700,
         color: Colors.white,
       ),
       bodySmall:GoogleFonts.elMessiri(
         fontSize: 20,
         fontWeight: FontWeight.w700,
         color: Colors.white,
       ),
     )
 );

}