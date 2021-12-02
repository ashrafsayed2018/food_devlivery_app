import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/widget/food_list_view.dart';
import '/modals/resturant.dart';
import '../home/widget/food_list.dart';
import '/screens/home/widget/resturant_info.dart';
import '/widgets/custom_app_bar.dart';
import '/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  final resturant = Resturant.generateResturant();
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            leftIcon: Icons.arrow_back_ios_new_outlined,
            rightIcon: Icons.search_outlined,
          ),
          ResturantInfo(),
          FoodList(
              selected: selected,
              callBack: (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              },
              resturant: resturant),
          Expanded(
            child: FoodListView(
              selected: selected,
              callback: (int index) {
                selected = index;
              },
              pageController: pageController,
              resturant: resturant,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: resturant.menu!.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(10)),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: kBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                    color: kPrimaryColor,
                    padding: 2,
                    width: 2,
                  ),
                ),
              ),
              onDotClicked: (index) {
                pageController.jumpToPage(index);
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
