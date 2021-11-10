import 'package:catalog/models/item.dart';
import 'package:catalog/widgets/add_to_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$${item.price.toString()}",
            style: TextStyle(
              color: Theme.of(context).highlightColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const AddToCartButton().wh(120, 40),
        ],
      ).p32(),
    );
  }
}
