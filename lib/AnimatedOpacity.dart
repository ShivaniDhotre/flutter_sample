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

var myOpacity = 1.0;
bool isVisible = true;



Decoration myDecor = BoxDecoration(
  borderRadius: BorderRadius.circular(2),
  color: Colors.pink.shade200
);
  

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
            AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 1),curve: Curves.bounceIn,
            child: Container(
              width: 200,
              height: 100,
              color: Colors.purple,
            ),
            ),

            ElevatedButton(onPressed: (){
             
              setState(() {
                if(isVisible){
                  myOpacity = 0.0;//in visible
                  isVisible = false;
                }else{
                  myOpacity = 1.0;// visible
                  isVisible = true;
                }
                 
              });
            }, child: Text('Close'))
            
          ],
        
        ),
      )
        );
      
      
      
    
  }
}
