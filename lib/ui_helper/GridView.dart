import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var arrColors  = [Colors.amber,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.purple,
    Colors.brown
    ];
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Dashbord'),
      ),
      body: Container(
        //width: 200,
        child: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children: [
          
          Container(color: arrColors[0],),
          Container(color: arrColors[1],),
          Container(color: arrColors[2],),
          Container(color: arrColors[3],),
          Container(color: arrColors[4],),
          Container(color: arrColors[5],),
          Container(color: arrColors[6],),
          Container(color: arrColors[7],),
        ],
        ),
      )
    ); 
  }
}
