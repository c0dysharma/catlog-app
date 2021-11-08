import 'package:catalog/models/item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: item.id.toString(),
      child: Image.network(
        item.image,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      ),
    ).h32(context).centered().p16();
  }
}
