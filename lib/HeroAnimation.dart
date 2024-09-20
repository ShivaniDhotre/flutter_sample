

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_app/HeroAnimation2.dart';

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
      home: MyHomePage(title: 'Hero',),
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








  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(' Hero Animation'),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
            } ,
            child: Hero(
              tag: 'background', 
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 150,
                )),
          ),
        ),
      )


                
          
        );
      
        
      
      
      
    
  }
}
