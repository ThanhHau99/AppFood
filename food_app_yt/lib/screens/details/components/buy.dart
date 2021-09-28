import 'package:flutter/material.dart';
import 'package:food_app_yt/constans.dart';
import 'package:food_app_yt/models/item.dart';

class Buy extends StatelessWidget {
  const Buy({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                'Price',
                style: TextStyle(fontSize: 18),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: '\$ ',
                  style: TextStyle(
                    fontSize: 22,
                    color: kRedColor,
                  ),
                ),
                TextSpan(
                  text: item.price.toString(),
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ])),
            ],
          ),
        ),
        Spacer(),
        Expanded(
          flex: 4,
          child: BuyButton(),
        ),
      ],
    );
  }
}

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding * 2),
          color: kRedColor,
        ),
        height: 50,
        alignment: Alignment.center,
        child: Text(
          'Buy now',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
