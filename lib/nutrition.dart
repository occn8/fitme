import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  Nutrition({Key? key}) : super(key: key);

  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nutritius Foods'),centerTitle: true,),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: ListView.builder(
            itemCount: nutriList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {

              NutriModel nutri = nutriList[index];
              return Container(
                padding: EdgeInsets.all(5),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          '${nutri.name}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height:8),
                        Text(
                          '${nutri.description}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class NutriModel {
  final String? name;
  final String? description;

  NutriModel({this.name, this.description});
}

List<NutriModel> nutriList = [
  NutriModel(
    name: 'Apples',
    description:
        'Apples are high in fiber, vitamin C, and numerous antioxidants. They are very filling and make the perfect snack if you find yourself hungry between meals.',
  ),
  NutriModel(
      name: 'Avocados',
      description:
          'Avocados are different than most fruits because they are loaded with healthy fats instead of carbs. Not only are they creamy and tasty but also high in fiber, potassium, and vitamin C.'),
  NutriModel(
      name: 'Bananas',
      description:
          'Bananas are among the world’s best sources of potassium. They’re also high in vitamin B6 and fiber, as well as convenient and portable.'),
  NutriModel(
      name: 'Blueberries',
      description:
          'Blueberries are not only delicious but also among the most powerful sources of antioxidants in the world.'),
  NutriModel(
      name: 'Oranges',
      description:
          'Oranges are well known for their vitamin C content. What’s more, they’re high in fiber and antioxidants.'),
  NutriModel(
      name: 'Strawberries',
      description:
          'Strawberries are highly nutritious and low in both carbs and calories. \nThey are loaded with vitamin C, fiber, and manganese and are arguably among the most delicious foods in existence.'),
  NutriModel(
      name: 'Eggs',
      description:
          'Eggs are among the most nutritious foods on the planet.\n They were previously demonized for being high in cholesterol, but new studies show that they’re perfectly safe and healthy .'),
  NutriModel(
      name: 'Lean beef',
      description:
          'Unprocessed, gently cooked meat is one of the most nutritious foods you can eat. \n Lean beef is among the best sources of protein in existence and loaded with highly bioavailable iron. Choosing the fatty cuts is fine if you’re on a low-carb diet.'),
  NutriModel(
      name: 'Chicken breasts',
      description:
          'Chicken breast is low in fat and calories but extremely high in protein. It’s a great source of many nutrients. Again, feel free to eat fattier cuts of chicken if you’re not eating that many carbs.'),
  NutriModel(
      name: 'Lamb',
      description:
          'Lambs are usually grass-fed, and their meat tends to be high in omega-3 fatty acids.'),
  NutriModel(
      name: 'Almonds',
      description:
          'Almonds are a popular nut loaded with vitamin E, antioxidants, magnesium, and fiber. Studies show that almonds can help you lose weight and improve metabolic health'),
  NutriModel(
      name: 'Chia seeds',
      description:
          'Chia seeds are among the most nutrient-dense foods on the planet. A single ounce (28 grams) packs 11 grams of fiber and significant amounts of magnesium, manganese, calcium, and various other nutrients.'),
  NutriModel(
      name: 'Coconuts',
      description:
          'Coconuts are loaded with fiber and powerful fatty acids called medium-chain triglycerides (MCTs).'),
  NutriModel(
      name: 'Macadamia nuts',
      description:
          'Macadamia nuts are very tasty. They’re much higher in monounsaturated fats and lower in omega-6 fatty acids than most other nuts.'),
  NutriModel(
      name: 'Asparagus',
      description:
          'Asparagus is a popular vegetable. It’s low in both carbs and calories but loaded with vitamin K.'),
  NutriModel(
      name: 'Bell peppers',
      description:
          'Bell peppers come in several colors, including red, yellow, and green. They’re crunchy and sweet, as well as a great source of antioxidants and vitamin C.'),
  NutriModel(
      name: 'Broccoli',
      description:
          'Broccoli is a cruciferous vegetable that tastes great both raw and cooked. It’s an excellent source of fiber and vitamins C and K and contains a decent amount of protein compared with other vegetables.'),
  NutriModel(
      name: 'Carrots',
      description:
          'Carrots are a popular root vegetable. They are extremely crunchy and loaded with nutrients like fiber and vitamin K.\n Carrots are also very high in carotene antioxidants, which have numerous benefits.'),
  NutriModel(
      name: 'Cucumber',
      description:
          'Cucumbers are one of the world’s most popular vegetables. They’re very low in both carbs and calories, consisting mostly of water. However, they contain a number of nutrients in small amounts, including vitamin K.'),
  NutriModel(
      name: 'Garlic',
      description:
          'Garlic is incredibly healthy. It contains bioactive organosulfur compounds that have powerful biological effects, including improved immune function.'),
  NutriModel(
      name: 'Salmon',
      description:
          'Salmon is a type of oily fish that’s incredibly popular due to its excellent taste and high amount of nutrients, including protein and omega-3 fatty acids. It also contains some vitamin D.'),
  NutriModel(
      name: 'Sardines',
      description:
          'Sardines are small, oily fish that are among the most nutritious foods you can eat. They boast sizable amounts of most nutrients that your body needs.'),
  NutriModel(
      name: 'Shellfish',
      description:
          'Shellfish ranks similarly to organ meats when it comes to nutrient density. Edible shellfish include clams, mollusks, and oysters.'),
];
