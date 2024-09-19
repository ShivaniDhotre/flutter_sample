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

var _width = 200.0;
var _height = 100.0;

bool flag = true;



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
            AnimatedContainer(
              width: _width,
              height: _height,
             curve: Curves.easeInBack,
              decoration: myDecor,
              duration:Duration(seconds: 2),
               ),
        
               ElevatedButton(onPressed: (){
                
                setState(() {
                  if(flag){
                    _width = 100.0; 
                     _height = 200.0;
                     
                     myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.red
                     );
                     flag = false;

                  }else{
                    _width = 200.0;
                    _height = 100.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.pink.shade200
                     );
                   
                    flag = true;

                  }
                  

                });

               }, child: Text('Animate'))
          ],
        ),
      )
      
      
    );
  }
}
