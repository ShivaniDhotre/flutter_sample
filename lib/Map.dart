import 'package:flutter/material.dart';

class FruitListApp extends StatelessWidget {
  final Map<String, int> fruitPrices = {
    'Apple': 3,
    'Banana': 1,
    'Orange': 2,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fruit Prices')),
        body: ListView(
          children: fruitPrices.entries.map((entry) {
            return ListTile(
              title: Text(entry.key),
              subtitle: Text('Price: \$${entry.value}'),
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(FruitListApp());
}
