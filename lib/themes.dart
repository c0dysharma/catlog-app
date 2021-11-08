import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        backgroundColor: MyThemes.creamColor,
        canvasColor: MyThemes.creamColor,
        primaryColor: MyThemes.lightPrimary,
        focusColor: MyThemes.darkBluishColor,
        highlightColor: Colors.red[900],
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: MyThemes.lightPrimary,
          ),
        ),
      );
  static darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        backgroundColor: MyThemes.darkBluishColor,
        canvasColor: MyThemes.darkBluishColor,
        primaryColor: MyThemes.darkPrimary,
        focusColor: MyThemes.creamColor,
        highlightColor: Colors.amber,
        errorColor: Colors.amber[300],
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: MyThemes.darkPrimary,
          ),
        ),
      );

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color lightPrimary = const Color(0xffffffff);
  static Color darkBluishColor = const Color(0xff403b58);
  static Color darkPrimary = const Color(0xff39354f);

}
