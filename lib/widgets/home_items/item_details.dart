import 'package:catalog/models/item.dart';
import 'package:catalog/widgets/add_to_cart_button.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  const ItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name,
            style: TextStyle(
              color: Theme.of(context).focusColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            item.desc,
            style: Theme.of(context).textTheme.caption,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${item.price.toString()}",
                style: TextStyle(
                  color: Theme.of(context).focusColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const AddToCartButton(),
            ],
          )
        ],
      ),
    );
  }
}

