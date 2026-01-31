import 'package:flutter/material.dart';

/// Exercise 4 - App Structure with Scaffold, AppBar, FAB & Theme
/// Goal: Practice building a complete screen structure.
class Exercise4 extends StatelessWidget {
  final VoidCallback onThemeToggle;

  const Exercise4({super.key, required this.onThemeToggle});

  @override
  Widget build(BuildContext context) {
    // 1. Create a new screen using Scaffold
    return Scaffold(
      // 2. Add AppBar
      appBar: AppBar(
        title: const Text('Exercise 4: App Structure'),
        actions: [
          // 3. Implement a "Dark Mode" toggle
          Switch(
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (value) {
              onThemeToggle();
            },
          ),
        ],
      ),
      // 2. Add Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is a simple screen with theme toggle.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Displaying current theme info
            Text(
              'Current Theme: ${Theme.of(context).brightness == Brightness.dark ? "Dark" : "Light"}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
      // 2. Add FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('FAB Pressed!')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


