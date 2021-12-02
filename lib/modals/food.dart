class Food {
  String? imgUrl;
  String? desc;
  String? name;
  String? waitTime;
  num? score;
  String? cal;
  num? price;
  num? quantity;
  List<Map<String, String>>? ingredients;
  String? about;
  bool? highlight;

  Food({
    this.imgUrl,
    this.desc,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingredients,
    this.about,
    this.highlight = false,
  });

  static List<Food> generateRecommandFood() {
    return [
      Food(
        imgUrl: 'assets/images/dish1.png',
        desc: 'No1 in sales',
        name: 'Soba Soup',
        waitTime: '50 min',
        score: 4.7,
        cal: '325 kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': "assets/images/ingre1.png"},
          {'Shrimp': "assets/images/ingre2.png"},
          {'Egg': "assets/images/ingre3.png"},
          {'Scallion': "assets/images/ingre4.png"},
        ],
        about:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        highlight: true,
      ),
      Food(
        imgUrl: 'assets/images/dish2.png',
        desc: 'No1 in sales',
        name: 'Soba Soup',
        waitTime: '50 min',
        score: 4.7,
        cal: '325 kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': "assets/images/ingre1.png"},
          {'Shrimp': "assets/images/ingre2.png"},
          {'Egg': "assets/images/ingre3.png"},
          {'Scallion': "assets/images/ingre4.png"},
        ],
        about:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        highlight: false,
      ),
      Food(
        imgUrl: 'assets/images/dish3.png',
        desc: 'No1 in sales',
        name: 'Soba Soup',
        waitTime: '50 min',
        score: 4.7,
        cal: '325 kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': "assets/images/ingre1.png"},
          {'Shrimp': "assets/images/ingre2.png"},
          {'Egg': "assets/images/ingre3.png"},
          {'Scallion': "assets/images/ingre4.png"},
        ],
        about:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        highlight: false,
      ),
      Food(
        imgUrl: 'assets/images/dish4.png',
        desc: 'No1 in sales',
        name: 'Soba Soup',
        waitTime: '50 min',
        score: 4.7,
        cal: '325 kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': "assets/images/ingre1.png"},
          {'Shrimp': "assets/images/ingre2.png"},
          {'Egg': "assets/images/ingre3.png"},
          {'Scallion': "assets/images/ingre4.png"},
        ],
        about:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        highlight: false,
      ),
    ];
  }

  static List<Food> generatePopularFood() {
    return [
      Food(
        imgUrl: 'assets/images/dish1.png',
        desc: 'No1 in sales',
        name: 'Soba Soup',
        waitTime: '50 min',
        score: 4.7,
        cal: '325 kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': "assets/images/ingre1.png"},
          {'Shrimp': "assets/images/ingre2.png"},
          {'Egg': "assets/images/ingre3.png"},
          {'Scallion': "assets/images/ingre4.png"},
        ],
        about:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        highlight: true,
      )
    ];
  }
}
