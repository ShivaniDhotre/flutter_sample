import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:my_first_app/AddImages.dart';
import 'package:my_first_app/SwitchingScreen.dart';


class Intropage extends StatelessWidget {
  const Intropage({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Intro'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text('Welcome',style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              ),),
          ),
            const SizedBox(height: 11,),
            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Dashbord',),

              ));
            }, child: const Text('Next'))
        ],
      ),
    );
  }


}