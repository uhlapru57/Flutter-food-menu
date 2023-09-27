import 'package:flutter/material.dart';
import 'food_menu_card.dart';

void main() {
  runApp(FoodMenuApp());
}

class FoodMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodMenuScreen(),
    );
  }
}
class FoodMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,

        
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/pizza.png',
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            const Text(
              'Cheese Pizza',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            const Text(
              'A classic Cheese pizza with tomato sauce, fresh mozzarella cheese, basil leaves, and olive oil.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            const Text(
              'Price: \$10.99',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16.0),
            const Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            const Text(
              '1. Fresh tomatoes\n2. Mozzarella cheese\n3. Fresh basil leaves\n4. Olive oil\n5. Salt & pepper',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
      
    );
  }
}



