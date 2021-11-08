import 'package:catalog/models/item.dart';
import 'package:catalog/pages/home_details_page.dart';
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
        return InkWell(
          child: ItemWidget(item: catalog),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeDetailsPage(item: catalog)),
          ),
        );
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
          color: Theme.of(context).primaryColor,
        ),
        child: ItemTile(item: item),
      ),
    );
  }
}
