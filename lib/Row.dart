
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
      body:Container(
       //width: 300,
        height: 300,
        child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       // mainAxisAlignment: MainAxisAlignment.spaceAround,
       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //mainAxisAlignment: MainAxisAlignment.center,
       //mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment:CrossAxisAlignment.center,

        children: [
          Text('A',style: TextStyle(fontSize: 25),),
          Text('B',style: TextStyle(fontSize: 25),),
          Text('V',style: TextStyle(fontSize: 25),),
          Text('S',style: TextStyle(fontSize: 25),),
          ElevatedButton (onPressed: () {
            
          },child: Text('click'))
        ],
      )
        ,
      )
      
      
    ); 
  }
}
