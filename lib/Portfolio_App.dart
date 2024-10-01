import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false, 

  ));
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
       // color: Colors.purple.shade200,
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0,left: 20),
          child: Column(
            
            
            children:<Widget> [
          
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 60,
                  
                  child: Icon(Icons.person,size: 60,
                  
                  ),
                  ),
                  SizedBox(width: 40,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      
        
                      Text("Shivani Dhotre",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                      Text("Software Developer",style: TextStyle(fontSize: 15),)
                    ],
                  )
                ],
              ),
        
              SizedBox(height: 50,),
        
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                
                        Icon(Icons.school,size: 40,),
                        SizedBox(width: 20,),
                        Text('EMV',style: TextStyle(fontSize: 20),)
                
                      ],
                    ),
        
                    SizedBox(height: 20,),
                    Row(
                
                      children: [
                
                        Icon(Icons.computer_rounded,size: 40,),
                        SizedBox(width: 20,),
                        Text('Sleep Apnea Uing CNN',style: TextStyle(fontSize: 20))
                
                      ],
                    ),
        
                    SizedBox(height: 20,),
                    Row(
                      children: [
                
                        Icon(Icons.location_pin,size: 40,),
                        SizedBox(width: 20,),
                        Text('Pune',style: TextStyle(fontSize: 20))
                
                      ],
                    ),
        
                    SizedBox(height: 20,),
        
                    Row(
                      children: [
                
                        Icon(Icons.email,size: 40,),
                        SizedBox(width: 25,),
                        Text('shivanidhot5e609@gmail.com',style: TextStyle(fontSize: 20))
                
                      ],
                    ),
        
                    SizedBox(height: 25,),
        
                    Row(
                      children: [
                
                        Icon(Icons.phone,size: 40,),
                        SizedBox(width: 25,),
                        Text('8669411303',style: TextStyle(fontSize: 20))
                
                      ],
                    )
                  ],
                ),
              ),
        
              SizedBox(height: 50,),
        
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Im completed my graduation in BE from PVPIT college.My programming skills include c,c++,java,  MySQL,html,css,javascript,github,flutter.'
                
                ,style: TextStyle(fontSize: 20),),
              ),
        
             SizedBox(height: 90,),
              Text('Create By Shivani')
            ],
          ),
        ),
      ),
    );
  }
}