import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Messages"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Card(
                elevation: 0,
                child: ListTile(
                  title: Row(
                    children: [
                      Text(' Max    '),
                      Text('9:00 pM', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  subtitle: Text('how are you'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Row(
                    children: [
                      Text('jenny   '),
                      Text('10:00 AM', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  subtitle: Text('Whats up'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Row(
                    children: [
                      Text('chole   '),
                      Text('11:00 AM', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  subtitle: Text('Hello'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Row(
                    children: [
                      Text('jon   '),
                      Text('12:30 AM', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  subtitle: Text('Hi'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
