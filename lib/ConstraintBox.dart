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
        
        title: const Text('Dashbord'),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
          minWidth: 200,
          minHeight: 100,
          maxHeight: 100,
        ),
        child:ElevatedButton(onPressed: (){
        
        }, 
        child: const Text('Click'))
         /*Text('Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World',
        style: TextStyle(
          fontSize: 21,
          overflow: TextOverflow.fade
          ),),*/
      )
      
    ); 
  }
}
