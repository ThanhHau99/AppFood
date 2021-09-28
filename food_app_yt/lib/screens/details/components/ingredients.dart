import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_yt/constans.dart';
import 'package:food_app_yt/models/item.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.ingrediants.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultPadding),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: kDefaultPadding),
              width: 50,
              child: SvgPicture.asset(
                item.ingrediants[index],
              ),
            );
          }),
    );
  }
}
