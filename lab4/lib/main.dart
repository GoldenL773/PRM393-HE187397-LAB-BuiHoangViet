import 'package:flutter/material.dart';
import 'exercise1.dart';
import 'exercise2.dart';
import 'exercise3.dart';
import 'exercise4.dart';
import 'exercise5.dart';

void main() {
  runApp(const Lab4App());
}

class Lab4App extends StatefulWidget {
  const Lab4App({super.key});

  @override
  State<Lab4App> createState() => _Lab4AppState();
}

class _Lab4AppState extends State<Lab4App> {
  // State for ThemeMode (Exercise 4 requirement)
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 4 - Flutter UI Fundamentals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: _themeMode,
      home: HomeScreen(onThemeToggle: _toggleTheme),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final VoidCallback onThemeToggle;

  const HomeScreen({super.key, required this.onThemeToggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab 4 - Flutter UI Fundamentals')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildNavButton(
            context,
            'Exercise 1 - Core Widgets Demo',
            const Exercise1(),
          ),
          _buildNavButton(
            context,
            'Exercise 2 - Input Controls Demo',
            const Exercise2(),
          ),
          _buildNavButton(
            context,
            'Exercise 3 - Layout Demo',
            const Exercise3(),
          ),
          _buildNavButton(
            context,
            'Exercise 4 - App Structure & Theme',
            Exercise4(onThemeToggle: onThemeToggle),
          ),
          _buildNavButton(
            context,
            'Exercise 5 - Common UI Fixes',
            const Exercise5(),
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.centerLeft,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}
