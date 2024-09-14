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
        
        title: Text('Container Decoration'),
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              //borderRadius: BorderRadius.circular(11)
             // borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21))
             //borderRadius: BorderRadius.all(Radius.circular(21))
             //borderRadius: BorderRadius.circular(21),
             border: Border.all(
              width: 2,
              color: Colors.black

             ),

             boxShadow: [
              BoxShadow(
                blurRadius: 21,
                color: Colors.grey,
                spreadRadius: 7
              )
             ],
             shape: BoxShape.circle

            ),
          ),
        ),
      )
       
      
    ); 
  }
}
