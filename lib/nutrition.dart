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
      appBar: AppBar(
        title: Text('Nutritius Foods'),
        centerTitle: true,
      ),
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
                        SizedBox(height: 8),
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
  NutriModel(
      name: 'Brown rice',
      description:
          'Rice is one of the most popular cereal grains and is currently a staple food for more than half of the world’s population. Brown rice is fairly nutritious, with a decent amount of fiber, vitamin B1, and magnesium.'),
  NutriModel(
      name: 'Oats',
      description:
          'Oats are incredibly healthy. They are loaded with nutrients and powerful fibers called beta glucans, which provide numerous benefits.'),
  NutriModel(
      name: 'Quinoa',
      description:
          'Quinoa has become incredibly popular among health-conscious individuals in recent years. It’s a tasty grain that’s high in nutrients, such as fiber and magnesium. It is also an excellent source of plant-based protein.'),
  NutriModel(
      name: 'Ezekiel bread',
      description:
          'Ezekiel bread may be the healthiest bread you can buy. It’s made from organic, sprouted whole grains, as well as several legumes.'),
  NutriModel(
      name: 'Green beans',
      description:
          'Green beans, also called string beans, are unripe varieties of the common bean. They are very popular in Western countries.'),
  NutriModel(
      name: 'Kidney beans',
      description:
          'Kidney beans are loaded with fiber and various vitamins and minerals. Make sure to cook them properly, as they’re toxic when raw.'),
  NutriModel(
      name: 'Peanuts',
      description:
          'Peanuts (which are legumes, not a true nuts) are incredibly tasty and high in nutrients and antioxidants. Several studies suggest that peanuts can help you lose weight.\n However, take it easy on the peanut butter, as it’s very high in calories and easy to overeat.'),
  NutriModel(
      name: 'Whole milk',
      description:
          'Whole milk is very high in vitamins, minerals, quality animal protein, and healthy fats. What’s more, it’s one of the best dietary sources of calcium.'),
  NutriModel(
      name: 'Yogurt',
      description:
          'Yogurt is made from milk that’s fermented by adding live bacteria to it. It has many of the same health effects as milk, but yogurt with live cultures has the added benefit of friendly probiotic bacteria.'),
  NutriModel(
      name: 'Cheese',
      description:
          'Cheese is incredibly nutritious, as a single slice may offer about the same amount of nutrients as an entire cup (240 ml) of milk. For many, it’s also one of the most delicious foods you can eat.'),
  NutriModel(
      name: 'Coconut oil',
      description:
          'Coconut oil contains relatively high amounts of MCTs, may aid Alzheimer’s disease, and has been shown to help you lose belly fat'),
  NutriModel(
      name: 'Extra virgin olive oil',
      description:
          'Extra virgin olive oil is one of the healthiest vegetable oils you can find. It contains heart-healthy monounsaturated fats and is very high in antioxidants with powerful health benefits.'),
  NutriModel(
      name: 'Potatoes',
      description:
          'Potatoes are loaded with potassium and contain a little bit of almost every nutrient you need, including vitamin C.\n They’ll also keep you full for long periods. One study analyzed 38 foods and found that boiled potatoes were by far the most filling'),
  NutriModel(
      name: 'Sweet potatoes',
      description:
          'Sweet potatoes are among the most delicious starchy foods you can eat. They’re loaded with antioxidants and all sorts of healthy nutrients.'),
  NutriModel(
      name: 'Dark chocolate',
      description:
          'Dark chocolate is loaded with magnesium and serves as one of the planet’s most powerful sources of antioxidants'),
  NutriModel(
      name: 'Apple cider vinegar',
      description:
          'Apple cider vinegar is incredibly popular in the natural health community. Studies show that it can help lower blood sugar levels and cause modest weight loss.\nIt’s great to use as a salad dressing or to add flavor to meals.'),
  NutriModel(
      name: 'Lentils',
      description:
          'Lentils are another popular legume. They’re high in fiber and among the best sources of plant-based protein.'),
  NutriModel(
      name: 'Tuna',
      description:
          'Tuna is very popular in Western countries and tends to be low in fat and calories while high in protein. It’s perfect for people who need to add more protein to their diets but keep calories low.'),
  NutriModel(
      name: 'Homemade low-carb breads',
      description:
          'Overall, the best choice for bread may be that which you can make yourself. Here’s a list of 15 recipes for gluten-free, low-carb breads.'),
  NutriModel(
      name: 'Shrimp',
      description:
          'Shrimp is a type of crustacean related to crabs and lobsters. It tends to be low in fat and calories but high in protein. It’s also loaded with various other nutrients, including selenium and vitamin B12.'),
];
