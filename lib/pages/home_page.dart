// ignore_for_file: prefer_const_constructors

import 'package:catalog/models/item.dart';
import 'package:catalog/widgets/drawer.dart';
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

  List<Item> list = [];
  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catlogData = await rootBundle.loadString("assets/files/catlog.json");
    final productsData = jsonDecode(catlogData)["products"];
    list = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (list.isEmpty)
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: list[index],
                ),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
