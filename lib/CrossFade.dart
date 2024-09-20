

import 'dart:async';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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


bool isFirst = true;

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4),(){


      reload();
    });
  }

  void reload (){
    setState(() {
      
        isFirst = false;
      
      
    });
  }





  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Flutter Container'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
               secondChild: Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
                ), 
               crossFadeState: isFirst ?  CrossFadeState.showFirst :CrossFadeState.showSecond,
                duration: Duration(seconds: 2),),


                
          ],
        ),
      )
        );
      
      
      
    
  }
}
