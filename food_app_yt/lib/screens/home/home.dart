import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_yt/components/app_bar.dart';
import 'package:food_app_yt/components/bottom_nav.dart';
import 'package:food_app_yt/constans.dart';
import 'package:food_app_yt/models/category.dart';
import 'package:food_app_yt/models/item.dart';
import 'package:food_app_yt/screens/home/components/categories.dart';
import 'package:food_app_yt/screens/home/components/filter_button.dart';
import 'package:food_app_yt/screens/home/components/item_card.dart';
import 'package:food_app_yt/screens/home/components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'home',
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * 0.5, 0),
          child: IconButton(
            icon: Image.asset('assets/images/user.png'),
            onPressed: () {},
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/notification.svg'),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find the best\nHealth for you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              SearchBar(),
              Row(
                children: [
                  FilterButton(),
                  Expanded(
                    child: Categories(),
                  ),
                ],
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                'Popular',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: demoItem.length,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ItemCard(
                    item: demoItem[index],
                    index: index,
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
