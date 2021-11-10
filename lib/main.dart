// import 'package:catalog/pages/cart_page.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/utils/my_routes.dart';
import 'package:catalog/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        // MyRoutes.cartPageRoute: (context) => CartPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
