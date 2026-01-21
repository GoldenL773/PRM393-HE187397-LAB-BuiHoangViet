import 'package:flutter/material.dart';

/// Exercise 5 - Debug & Fix Common UI Errors
/// Goal: Understand common layout issues and fix them.
class Exercise5 extends StatefulWidget {
  const Exercise5({super.key});

  @override
  State<Exercise5> createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 5: Common UI Fixes')),
      // Fix 2: Fix overflow in small screens using SingleChildScrollView
      body: SingleChildScrollView(
        child: SizedBox(
          // Using SizedBox to give a constrained height for the column if needed,
          // or just letting it grow. For this demo, we'll let it be flexible.
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              // Header
              Container(
                color: Colors.blue[100],
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                child: const Text('Correct ListView inside Column using Expanded'),
              ),

              // Fix 1: Fix ListView inside Column using Expanded
              // Without Expanded, ListView tries to take infinite height inside Column
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.movie),
                      title: Text('Movie ${String.fromCharCode(65 + index)}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

