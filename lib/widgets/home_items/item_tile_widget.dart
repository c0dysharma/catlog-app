import 'package:catalog/widgets/home_items/item_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:catalog/models/item.dart';
import 'item_details.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 5, 16),
      child: Row(
        children: [
          Hero(
            tag: item.id.toString(),
            child: ItemImage(img: item.image),
          ),
          const SizedBox(width: 16),
          ItemDetail(item: item),
        ],
      ),
    );
  }
}
