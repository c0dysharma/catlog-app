import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/lappylogin.png",
      height: 300,
      width: 300,
    );
  }
}
