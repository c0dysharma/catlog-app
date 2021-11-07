import 'package:catalog/models/item.dart';
import 'package:flutter/material.dart';
import 'item_tile_widget.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ItemList.itemList.length,
      itemBuilder: (context, index) {
        final catalog = ItemList.itemList[index];
        return ItemWidget(item: catalog);
      },
    );
  }
}

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != Null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
        ),
        child: ItemTile(item: item),
      ),
    );
  }
}

