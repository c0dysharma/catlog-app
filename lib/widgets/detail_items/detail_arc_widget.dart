import 'package:catalog/models/item.dart';
import 'package:catalog/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailArc extends StatelessWidget {
  final Item item;
  const DetailArc({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: VxArc(
        height: 30,
        arcType: VxArcType.CONVEY,
        edge: VxEdge.TOP,
        child: Container(
          color: Colors.white,
          width: context.screenWidth,
          child: Column(
            children: [
              Text(
                item.name,
                style: TextStyle(
                  color: MyThemes.darkBluishColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ).pLTRB(16, 32, 16, 0),
              "${item.desc}".text.caption(context).lg.make(),
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis'
                  .text
                  .caption(context)
                  .make()
                  .p16(),
            ],
          ),
        ),
      ),
    );
  }
}
