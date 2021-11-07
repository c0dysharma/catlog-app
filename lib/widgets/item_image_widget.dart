import 'package:catalog/models/item.dart';
import 'package:catalog/widgets/themes.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final Item item;
  const ItemImage({Key? key, required this.item}) : super(key: key);

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
        item.image,
      ),
    );
  }
}
