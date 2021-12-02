import 'package:flutter/material.dart';
import 'package:food_delivery_app/modals/resturant.dart';
import 'package:food_delivery_app/screens/detail/detail.dart';
import 'package:food_delivery_app/screens/home/widget/food_item.dart';
import '/screens/home/widget/food_list.dart';

class FoodListView extends StatelessWidget {
  final int? selected;
  final Function? callback;
  final PageController? pageController;
  final Resturant? resturant;
  const FoodListView({
    Key? key,
    this.selected,
    this.callback,
    this.pageController,
    this.resturant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = resturant!.menu!.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            callback!(index);
          },
          children: category
              .map(
                (e) => ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                    food: resturant!
                                        .menu![category[selected!]]![index]),
                              ),
                            );
                          },
                          child: FoodItem(
                            food: resturant!.menu![category[selected!]]![index],
                          ),
                        ),
                    separatorBuilder: (_, index) => const SizedBox(
                          height: 15,
                        ),
                    itemCount: resturant!.menu![category[selected!]]!.length),
              )
              .toList()),
    );
  }
}
