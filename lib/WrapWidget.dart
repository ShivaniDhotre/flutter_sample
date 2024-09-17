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
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Dashbord'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
         // alignment: WrapAlignment.spaceEvenly,
         alignment: WrapAlignment.spaceBetween,
          
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.orange.shade200,
            ),
        
            Container(
              width: 100,
              height: 100,
              color: Colors.red.shade300,
            ),
        
            Container(
              width: 100,
              height: 100,
              color: Colors.purple.shade200,
            ),

            Container(
            width: 100,
            height: 100,
            color: Colors.indigoAccent.shade200,
          ),
        
        
            Container(
              width: 100,
              height: 100,
              color: Colors.blue.shade200,
            ),
        
            Container(
              width: 100,
              height: 100,
              color: Colors.pink.shade200,
            ),
        
            Container(
              width: 100,
              height: 100,
              color: Colors.green.shade200,
            ),
        
            Container(
              width: 100,
              height: 100,
              color: Colors.amber.shade200,
            ),
        
            Container(
              width: 100,
              height: 100,
              color: Colors.tealAccent.shade200,
            ),
          ],
        ),
      )
      
    ); 
  }
}
