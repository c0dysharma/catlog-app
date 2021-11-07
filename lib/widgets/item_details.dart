import 'package:catalog/models/item.dart';
import 'package:catalog/themes.dart';
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
              color: MyThemes.darkBluishColor,
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
                  color: MyThemes.darkBluishColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Sell your kideny!");
                },
                child: const Text("Buy"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyThemes.darkBluishColor),
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
