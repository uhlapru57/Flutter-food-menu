import 'package:flutter/material.dart';


class FoodMenuApp extends StatelessWidget {
  const FoodMenuApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FoodMenuScreen(),
    );
  }
}
class FoodMenuScreen extends StatelessWidget {
  const FoodMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cheese Pizza',
        ),
        backgroundColor: Colors.orange
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/pizza.png',
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            const Text(
              'Cheese Pizza',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange
              ),
            ),
            SizedBox(height: 8.0),
            const Text(
              'A classic Cheese pizza with tomato sauce, fresh mozzarella cheese, basil leaves, and olive oil.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 16.0),
            const Text(
              'Price: \$10.99',
              style: TextStyle(
                fontSize: 18.0,
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



