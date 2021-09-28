import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_yt/components/app_bar.dart';
import 'package:food_app_yt/constans.dart';
import 'package:food_app_yt/models/item.dart';
import 'package:food_app_yt/screens/details/components/buy.dart';
import 'package:food_app_yt/screens/details/components/ingredients.dart';
import 'package:food_app_yt/screens/details/components/qty_counter.dart';
import 'package:food_app_yt/screens/details/components/title_bar.dart';
import 'package:food_app_yt/screens/details/components/vitamins.dart';

class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'Detail',
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * 0.5, 0),
          child: IconButton(
            icon: SvgPicture.asset('assets/icons/back.svg'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/dots.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
              color: Color(item.color),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 5),
                topRight: Radius.circular(kDefaultPadding * 5),
              ),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                  kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBar(item: item),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    QtyCounter(),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      item.description,
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Vitamins(item: item),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      'Ingredients',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Ingredients(item: item),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Buy(item: item),
                  ],
                ),
              ),
            ),
          ),
          Hero(
            tag: item.id,
            child: Image.asset(
              item.image,
              height: size.height * 0.4,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
