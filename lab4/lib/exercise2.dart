import 'package:flutter/material.dart';

/// Exercise 2 - Input Widgets: Slider, Switch, RadioListTile, DatePicker
/// Goal: Build interactive UI that lets users control values.
class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  // State variables
  double _rating = 50;
  bool _isActive = false;
  String _selectedGenre = 'Action';
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 2: Input Controls')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // 1. Slider
          const Text('Rating (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
          Slider(
            value: _rating,
            min: 0,
            max: 100,
            divisions: 10,
            label: _rating.round().toString(),
            onChanged: (double value) {
              setState(() {
                _rating = value;
              });
            },
          ),
          Text('Current value: ${_rating.round()}'),
          const Divider(),

          // 2. Switch
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Active (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
              Switch(
                value: _isActive,
                onChanged: (bool value) {
                  setState(() {
                    _isActive = value;
                  });
                },
              ),
            ],
          ),
          Text('Is movie active? $_isActive'),
          const Divider(),

          // 3. RadioListTile Group
          const Text('Genre (RadioListTile)', style: TextStyle(fontWeight: FontWeight.bold)),
          RadioListTile<String>(
            title: const Text('Action'),
            value: 'Action',
            groupValue: _selectedGenre,
            onChanged: (String? value) {
              setState(() {
                _selectedGenre = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Comedy'),
            value: 'Comedy',
            groupValue: _selectedGenre,
            onChanged: (String? value) {
              setState(() {
                _selectedGenre = value!;
              });
            },
          ),
          Text('Selected genre: $_selectedGenre'),
          const Divider(),

          // 4. Button to show DatePicker
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (picked != null && picked != _selectedDate) {
                setState(() {
                  _selectedDate = picked;
                });
              }
            },
            child: const Text('Open Date Picker'),
          ),
          if (_selectedDate != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Selected Date: ${_selectedDate!.toLocal()}'.split(' ')[0],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}

