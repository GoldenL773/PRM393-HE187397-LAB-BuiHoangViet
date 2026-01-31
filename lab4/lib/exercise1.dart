import 'package:flutter/material.dart';

/// Exercise 1 - Core Widgets: Text, Image, Icon, Card, ListTile
/// Goal: Build a simple UI demonstrating essential Flutter display widgets.
class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 1: Core Widgets')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 1. A headline Text
            const Text(
              'Welcome to Flutter UI',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // 2. An Icon using Material Icons
            const Icon(
              Icons.flutter_dash,
              size: 80,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),

            // 3. An Image.network()
            // Using a placeholder image for demonstration
            Image.network(
              'https://picsum.photos/400/200',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Text('Failed to load image'),
            ),
            const SizedBox(height: 20),

            // 4. A Card containing a ListTile
            const Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.star, color: Colors.amber),
                title: Text('Movie Item'),
                subtitle: Text('This is a sample ListTile inside a Card.'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


