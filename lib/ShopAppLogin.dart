import 'package:flutter/material.dart';
import 'package:http/http.dart';

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

  TextEditingController email = TextEditingController();
  TextEditingController password= TextEditingController();

  final url = "https://fakestoreapi.com/auth/login";
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Dashbord'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CircleAvatar(
            child:  Icon(Icons.person,size: 60,),
            radius: 50,
            backgroundColor: Colors.white,
           ),
           SizedBox(height: 10,),
            Text('Welcome To Our Shop'),
            SizedBox(height: 10,),
            TextField(
        
              controller: email,
              decoration: InputDecoration(
                hintText:"Enter Email",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ) 
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                hintText:"Enter Password",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ) 
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            }, 
            
            child: Text('Login'))
          ],
        ),
      )
    ); 
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
        backgroundColor: Colors.purple.shade200,
      ),
    );
  }
}
