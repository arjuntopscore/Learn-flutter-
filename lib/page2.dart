import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final bool codingChecked;
  final bool musicChecked;
  final String name;

  const Page2({
    super.key,
    required this.codingChecked,
    required this.musicChecked,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Selection')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name entered: $name',
              style: const TextStyle(fontSize: 18),
            ), // NEW
            const SizedBox(height: 10),
            Text(
              'Coding selected: $codingChecked',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Music selected: $musicChecked',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
