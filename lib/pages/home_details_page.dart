import 'package:catalog/models/item.dart';
import 'package:catalog/themes.dart';
import 'package:catalog/widgets/detail_items/detail_arc_widget.dart';
import 'package:catalog/widgets/detail_items/detail_header_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item item;
  const HomeDetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${item.price.toString()}",
              style: TextStyle(
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
                fontSize: 24,
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
            ).wh(100, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            HeaderImage(item: item),
            DetailArc(
              item: item,
            ),
          ],
        ),
      ),
    );
  }
}



