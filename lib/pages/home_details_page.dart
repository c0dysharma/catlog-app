import 'package:catalog/models/item.dart';
import 'package:catalog/widgets/detail_items/detail_arc_widget.dart';
import 'package:catalog/widgets/detail_items/detail_header_image.dart';
import 'package:catalog/widgets/detail_items/home_detail_navbar.dart';
import 'package:flutter/material.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item item;
  const HomeDetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavBar(item: item),
      body: SafeArea(
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


