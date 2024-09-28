import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Data/local/db_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //controllers
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

List<Map<String,dynamic>> allNotes = [];
DBHelper ? dbRef;

@override
  void initState() {
    
    super.initState();
    dbRef = DBHelper.getInstannce;
    getNotes();
  }

  void getNotes()async{
   allNotes =await dbRef!.getAllNotes();
    setState(() {
      
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text('Notes'),
      ),
      
      //all notes viewed here

      body: allNotes.isNotEmpty ? ListView.builder(
        itemCount: allNotes.length,
        itemBuilder: (_,index){
          return ListTile(
            leading: Text('${allNotes[index][DBHelper.COLUMN_NOTE_SNO]}'),
            title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
            subtitle:Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]), 
          );

      }) : Center(
        child: Text('No Notes Yet..!'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          //note to be added
          

        showBottomSheet(
          context:context ,
          builder: (context){
            return Padding(
              padding: const EdgeInsets.all(11),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text('Add Notes',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height:21 ,),

                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: "Enter Title Here",
                        label: Text('Title'),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        )
                      ),
                    ),

                     SizedBox(height:11 ,),

                    TextField(
                      controller: descController,
                      maxLines: 4,
                      decoration: InputDecoration(

                        hintText: "Enter Desc Here",
                        label: Text('Desc'),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          
                        )
                      ),
                    ),

                    SizedBox(height: 11,),

                    Row(
                      children: [

                        Expanded(child: OutlinedButton(
                          style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 4,
                              color: Colors.black
                            )
                          )),
                          onPressed: (){}, child: Text('Add Note'))),

                        SizedBox(
                          width: 11,
                        ),
                        Expanded(child: OutlinedButton(
                          style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 4,
                              color: Colors.black
                            )
                          )),
                          onPressed: (){}, child: Text('Cancel'))),

                      ],
                    )
                  ],
                ),
              ),
            );
          }
          );
        
      },
      child: Icon(Icons.add),
      ),
    );
  }
}