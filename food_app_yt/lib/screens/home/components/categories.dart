import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_yt/constans.dart';
import 'package:food_app_yt/models/category.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: demoCategories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectIndex = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.8),
                  margin: EdgeInsets.only(right: kDefaultPadding * 0.5),
                  child: Row(
                    children: [
                      SvgPicture.asset(demoCategories[index].icon),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        demoCategories[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          color: kPrimaryColor,
                          fontWeight: _selectIndex == index
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
