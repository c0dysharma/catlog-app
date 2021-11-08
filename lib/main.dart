// ignore_for_file: prefer_const_constructors

import 'package:catalog/models/item.dart';
import 'package:catalog/pages/home_details_page.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/utils/my_routes.dart';
import 'package:catalog/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
