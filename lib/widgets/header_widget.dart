// import 'package:catalog/utils/my_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 32, 32, 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Catalog App",
              style: TextStyle(
                color: Theme.of(context).focusColor,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.cart,
                color: Theme.of(context).focusColor,
                size: 25,
              ),
              onPressed: () {
                // Navigator.pushNamed(context, MyRoutes.cartPageRoute);
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ],
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
