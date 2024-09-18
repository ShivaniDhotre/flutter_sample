import 'package:flutter/material.dart';
import 'package:my_first_app/SplashScreenm.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   @override
   void initState(){
    super.initState();
    navigatetohome();
   }

   navigatetohome()async{
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MyHomePage(title: 'GFG',)));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container( 
          child: const Text('Splash Screen',style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            
            color: Colors.blue,
          ),),
        ),
      ),
    );
  }
}