import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String age;

  SecondScreen({required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Age: $age',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
