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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result ="";
  var bgColor;



  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('BMI APP'),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI',style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),),
            
                SizedBox(height: 21,),
            
                TextField(
                  controller:wtController ,
                  decoration: InputDecoration(
                    label: Text('Enter Your Weight (In Kg)'),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
            
                  keyboardType: TextInputType.number,
                ),
            
                SizedBox(height: 11,),
            
            
                TextField(
                  controller:ftController ,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height (In Feat)'),
                    prefixIcon: Icon(Icons.height)
                  ),
            
                  keyboardType: TextInputType.number,
                ),
            
                SizedBox(height: 11,),
            
            
                TextField(
                  controller:inController ,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height (In Inch)'),
                    prefixIcon: Icon(Icons.height)
                  ),
            
                  keyboardType: TextInputType.number,
                ),
        
        
                SizedBox(height: 16,),
        
                ElevatedButton(onPressed: (){
        
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();
        
                  if(wt!="" && ft!="" && inch!=""){
                    //BMI Calculation
        
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);
        
                      var tInch =  (iFt*12) * iInch;
        
                      var tCm = tInch*2.54;
        
                      var tM = tCm/100;
        
                      var bmi = iWt/(tM*tM);

                      var msg = "";

                      if(bmi>25){
                        msg = "You're OverWeight....!";
                        bgColor = Colors.red.shade200;

                      }else if(bmi<18){
                       msg = "You're Underweight....!";
                        bgColor = Colors.orange.shade200;

                      }else{
                        msg = "You're Healthy.....!";
                        bgColor = Colors.green.shade200;

                      }
        
                      setState(() {
                        result = "$msg BMI Is:${bmi.toStringAsFixed(4)}";
                      });
        
                  }else{
                    setState(() {
                      result = "Plase  Fill All The Required Blanks....!";
                    });
        
                  }
        
                }, child: Text('Calculate')),
        
                SizedBox(height: 11,),
        
                Text(result,style: TextStyle(fontSize: 19),)
                
              ],
            ),
          ),
        ),
      )
    );
  }
}
