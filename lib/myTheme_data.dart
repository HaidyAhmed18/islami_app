import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static Color primaryColor=Color(0xffB7935F);
 // static Color black=Color(0xff242424);
  static Color darkColor=Color(0xff242424);
  static Color darkPrimary=Color(0xff141A2E);
  static Color yellow=Color(0xffFACC1D);


  static ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: darkColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background:primaryColor,
          onBackground: darkColor,
          surface: primaryColor,
          onSurface: Colors.white),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          color:  primaryColor ,        //=====   //Color(0xff242424),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium:  GoogleFonts.elMessiri(
          color: Color(0xffffffff),
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
        bodySmall:  GoogleFonts.elMessiri(
          color: Color(0xff242424),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),



      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
        color: MyThemeData.primaryColor,
        size: 30,
        weight: 10,
      ),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,


      ),

   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     type: BottomNavigationBarType.shifting,
     backgroundColor:primaryColor,/// Color(0xffB7935F)
     selectedItemColor: darkColor,
     unselectedItemColor: primaryColor
   )

  );
  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: darkColor,
          onPrimary: Colors.white,
          secondary: yellow,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background:yellow,
          onBackground: Colors.white,
          surface: darkPrimary,
          onSurface: Colors.white),

      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          color:  Colors.white ,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium:  GoogleFonts.elMessiri(
          color: Color(0xffFACC1D),
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
        bodySmall:  GoogleFonts.elMessiri(
          color: Color(0xffFACC1D),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),



      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
          weight: 10,
        ),
         backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,


      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor:darkPrimary,
          selectedItemColor: yellow,
          unselectedItemColor: primaryColor
      )

  );

}