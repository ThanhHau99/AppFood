import 'package:flutter/material.dart';
import 'package:food_app_yt/constans.dart';

class QtyCounter extends StatelessWidget {
  const QtyCounter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Details',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Row(
          children: [
            QtyButton(
              text: '-',
              tap: () {},
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '1',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 10,
            ),
            QtyButton(
              text: '+',
              tap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class QtyButton extends StatelessWidget {
  const QtyButton({
    Key key,
    @required this.text,
    @required this.tap,
  }) : super(key: key);
  final String text;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
          color: Colors.white,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: kRedColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
