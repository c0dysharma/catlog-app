// ignore_for_file: prefer_const_constructors

import 'package:catalog/models/item.dart';
import 'package:catalog/widgets/header_widget.dart';
import 'package:catalog/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catlogData = await rootBundle.loadString("assets/files/catlog.json");
    final productsData = jsonDecode(catlogData)["products"];
    ItemList.itemList = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            if (ItemList.itemList.isEmpty)
              Expanded(child: Center(child: CircularProgressIndicator()))
            else
              Expanded(child: ListItems())
          ],
        ),
      ),
    );
  }
}

