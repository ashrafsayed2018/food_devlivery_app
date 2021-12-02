import '/modals/food.dart';

class Resturant {
  String? name;
  String? desc;
  String? waitTime;
  String? distance;
  String? label;
  String? logoUrl;
  num? score;
  Map<String, List<Food>>? menu;

  Resturant(
      {this.name,
      this.desc,
      this.waitTime,
      this.distance,
      this.label,
      this.logoUrl,
      this.score,
      this.menu});

  static Resturant generateResturant() {
    return Resturant(
        name: "resturant",
        desc: "this is the res desc",
        waitTime: "20 -30 min",
        distance: "2.4km",
        label: "Resturant",
        logoUrl: 'assets/images/res_logo.png',
        score: 4.7,
        menu: {
          "Recommend": Food.generateRecommandFood(),
          'popular': Food.generatePopularFood(),
          "Noodles": [],
          'Pizza': []
        });
  }
}
