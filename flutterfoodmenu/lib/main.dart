import 'package:flutter/material.dart';

void main() {
  runApp(FoodMenuApp());
}

class FoodMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Food Menu'),
        ),
        body: FoodMenu(),
        
      ),
    );
  }
}

class FoodMenu extends StatelessWidget {
  final List<FoodItem> foodItems = [
    FoodItem(
      name: 'Pizza',
      description: 'Delicious cheese and tomato pizza.',
      price: '\$11.99',
      imageAsset: 'assets/images/pizza.png',
    ),
    FoodItem(
      name: 'Burger',
      description: 'Hamburger Veggie burger Chicken sandwich Fast food.',
      price: '\$8.99',
      imageAsset: 'assets/images/burger.png',
    ),
    FoodItem(
      name: 'Seafood',
      description: 'Salmon with vegetables salad in plate, leaf Vegetable.',
      price: '\$12.99',
      imageAsset: 'assets/images/seafood.png',
    ),
    FoodItem(
      name: 'Sandwich',
      description: 'Panini Ham and cheese sandwich Italian dressing Chicken sandwich Club sandwich.',
      price: '\$9.99',
      imageAsset: 'assets/images/sandwich.png',
      
    ),
    FoodItem(
      name: 'Salad',
      description: 'Greek salad Caesar salad Israeli salad.',
      price: '\$10.99',
      imageAsset: 'assets/images/salad.png',
    ),
    // Add more food items here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        return FoodCard(foodItem: foodItems[index]);
      },
    );
  }
}

class FoodItem {
  final String name;
  final String description;
  final String price;
  final String imageAsset;

  FoodItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageAsset,
  });
}

class FoodCard extends StatelessWidget {
  final FoodItem foodItem;

  FoodCard({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            foodItem.imageAsset,
            width: double.infinity,
            height: 150.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodItem.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(foodItem.description),
                SizedBox(height: 8.0),
                Text(
                  foodItem.price,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
