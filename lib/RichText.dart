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
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.blue.shade200,
              fontSize: 21
            ),
            children: <TextSpan>[
              TextSpan(text: 'Hello '),
              TextSpan(text: 'World..!',style: TextStyle(
                fontSize: 25,
                color: Colors.purple.shade200,
                fontWeight: FontWeight.bold
              )),
              TextSpan(
                text: 'Welcome To',
              ),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.orange.shade200,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'FontMain'
                )
              )
            ]
          )),
      )
      
    ); 
  }
}
