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
        
        title: Text('Add Image Assetes'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.amber,
              ), 
          
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.black,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.red,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.purple,
              )
          
            ],
          ),
        ),
      )
       
      
    ); 
  }
}
