import 'package:catalog/themes.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String img;
  const ItemImage({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyThemes.creamColor,
      ),
      height: 100,
      width: 100,
      child: Image.network(
        img,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      ),
    );
  }
}
