import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Dashbord'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'select Date',
              style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(onPressed: () async{

                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context, 
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input
                    );
                  if(pickedTime!=null){
                    print('Time Selected: ${pickedTime.hour}:{$pickedTime.minute}');
                  }  
              }, child: Text('Select Time'))
          ],
        ),
      ),);
      
      
  }
}
