import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_yt/constans.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            icon: 'assets/icons/home.svg',
            tap: () {},
          ),
          NavItem(
            icon: 'assets/icons/chat.svg',
            tap: () {},
          ),
          NavItem(
            icon: 'assets/icons/buy.svg',
            tap: () {},
          ),
          NavItem(
            icon: 'assets/icons/profile.svg',
            tap: () {},
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String icon;
  final GestureTapCallback tap;
  const NavItem({
    Key key,
    @required this.icon,
    @required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: SvgPicture.asset(icon),
    );
  }
}
