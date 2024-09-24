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
  var arrData = [

    {
      'name' :'Ratan',
      'mobno ': '984656565',
      'unread' :'2'
    },
    {
      'name' :'Rani',
      'mobno ': '984656565',
      'unread' :'3'
    },
    {
      'name' :'Rahul',
      'mobno ': '984656565',
      'unread' :'4'
    },
    {
      'name' :'Rohan',
      'mobno ': '984656565',
      'unread' :'5'
    },

    {
      'name' :'Ram',
      'mobno ': '984656565',
      'unread' :'6'
    },

    {
      'name' :'Rashmi',
      'mobno ': '984656565',
      'unread' :'7'
    },

    {
      'name' :'Rutika',
      'mobno ': '984656565',
      'unread' :'8'
    }
    
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Dashbord'),
      ), 
      body: Container(
        child: ListView(
          children: arrData.map((value) =>

          ListTile(
           
           leading: Icon(Icons.account_circle),
           title: Text(value['name'].toString()),
           subtitle: Text(value['mobno'].toString()),
           trailing: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.blue,
            child: Text(value['unread'].toString())),
            
          )
            
              
          ).toList()
        ),

      )
      
    ); 
  }
}
