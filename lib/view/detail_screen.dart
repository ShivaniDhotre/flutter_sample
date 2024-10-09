import 'package:flutter/material.dart';

class CountryDetailsScreen extends StatelessWidget {
  final String name;
  final String cases;
  final String deaths;
  final String recovered;
  final String active;
  final String critical;
  final String todayDeaths;
  final String todayRecovered;
  final String flagUrl;

  const CountryDetailsScreen({
    Key? key,
    required this.name,
    required this.cases,
    required this.deaths,
    required this.recovered,
    required this.active,
    required this.critical,
    required this.todayDeaths,
    required this.todayRecovered,
    required this.flagUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(flagUrl, height: 200, width: 200),
            ),
            SizedBox(height: 16),
            Text(
              'Country: $name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Total Cases: $cases', style: TextStyle(fontSize: 18)),
            Text('Deaths: $deaths', style: TextStyle(fontSize: 18)),
            Text('Recovered: $recovered', style: TextStyle(fontSize: 18)),
            Text('Active Cases: $active', style: TextStyle(fontSize: 18)),
            Text('Critical Cases: $critical', style: TextStyle(fontSize: 18)),
            Text('Today\'s Deaths: $todayDeaths', style: TextStyle(fontSize: 18)),
            Text('Today\'s Recovered: $todayRecovered', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
