import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_yt/constans.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.4),
          margin: EdgeInsets.only(right: kDefaultPadding * 0.5),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/filter.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
