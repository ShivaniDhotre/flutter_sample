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
        child: Column(
          children: [

            CatItems(),
            Contact(),
            Mobile(),

           


            

            
          ],
        ),
      )
      
    ); 
  }
}


class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
              flex: 2,
              child: Container(
                
                color: Colors.blue[200],
                child: ListView.builder(itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),itemCount: 10,scrollDirection: Axis.horizontal),
              ),
            );
  }
}

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
              flex: 2,
              child: Container(
                
                color: Colors.purple[200],
                child: ListView.builder(itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text('Name'),
                    subtitle:Text('Mobile No') ,
                    trailing: Icon(Icons.delete),
                  ),
                ),),
              ),
            );
  }
}

class Mobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
              flex: 2,
              child: Container(
                
                color: Colors.red[200],
                child: ListView.builder(itemBuilder: (context, index) => 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.amber[100],
                    ),
                  ),
                  ),itemCount: 10,scrollDirection: Axis.horizontal,),
                
              ),
            );
  }
}




