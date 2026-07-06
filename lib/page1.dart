import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool _codingChecked = false;
  bool _musicChecked = false;

  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _goToPage2() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page2(
          codingChecked: _codingChecked,
          musicChecked: _musicChecked,
          name: _nameController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Interests')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text('Coding'),
              value: _codingChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _codingChecked = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Music'),
              value: _musicChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _musicChecked = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _goToPage2, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
