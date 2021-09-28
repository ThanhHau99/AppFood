import 'package:flutter/material.dart';
import 'package:food_app_yt/constans.dart';
import 'package:food_app_yt/models/item.dart';

class Vitamins extends StatelessWidget {
  const Vitamins({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.vitamins.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultPadding),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              margin: EdgeInsets.only(right: kDefaultPadding),
              child: Text(
                item.vitamins[index],
              ),
            );
          }),
    );
  }
}
