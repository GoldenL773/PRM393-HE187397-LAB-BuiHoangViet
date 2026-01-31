import 'package:flutter/material.dart';

/// Exercise 3 - Layout Basics: Column, Row, Padding, ListView
/// Goal: Build a sectioned UI layout similar to a real app Home screen.
class Exercise3 extends StatelessWidget {
  const Exercise3({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the list
    final List<Map<String, String>> movies = [
      {'title': 'Avatar', 'desc': 'Sample description'},
      {'title': 'Inception', 'desc': 'Sample description'},
      {'title': 'Interstellar', 'desc': 'Sample description'},
      {'title': 'Joker', 'desc': 'Sample description'},
      {'title': 'The Matrix', 'desc': 'Sample description'},
      {'title': 'Avengers', 'desc': 'Sample description'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 3: Layout Demo')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Vertical section using Column (Header)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Now Playing',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          
          // 3. ListView.builder showing items
          // Using Expanded to make ListView take remaining space within Column
          Expanded(
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return Card(
                  // 2 & 4. Consistent spacing
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue[100],
                      child: Text(movie['title']![0]),
                    ),
                    title: Text(movie['title']!),
                    subtitle: Text(movie['desc']!),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


