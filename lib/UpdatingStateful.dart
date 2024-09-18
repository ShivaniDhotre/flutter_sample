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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result= "";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: const Text('Dashbord'),
      ),
      body: Container(
        color: Colors.blue.shade300,
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(

                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 + no2;
                          result = "The sum of $no1 and $no2 is $sum";
                          setState(() {});
                        }, child: const Text('Add')),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sub = no1 - no2;
                          result = "The sub of $no1 and $no2 is $sub";
                          setState(() {});
                        }, child: const Text('Sub')),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var Mul = no1 * no2;
                          result = "The mul of $no1 and $no2 is $Mul";
                          setState(() {});
                        }, child: const Text('Mul')),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var Div = no1 / no2;
                          result = "The Div of $no1 and $no2 is $Div";
                          setState(() {});
                        }, child: const Text('Div')),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(21),
                  child: Text(result,style: const TextStyle(fontSize: 25,color: Colors.white),),)
                ],
              ),
            ),
        ),
      )
      
    ); 
  }
}
