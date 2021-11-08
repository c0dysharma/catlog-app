import 'package:catalog/themes.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 32, 32, 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Catalog App",
          style: TextStyle(
            color: Theme.of(context).focusColor,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        Text(
          "Trending Products",
          style: TextStyle(
            color: Theme.of(context).focusColor,
            fontSize: 18,
          ),
        ),
      ]),
    );
  }
}
