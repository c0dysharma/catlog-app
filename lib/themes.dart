import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        backgroundColor: MyThemes.creamColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
      );
  static darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluishColor = const Color(0xff403b58);
}
