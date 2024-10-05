import 'package:flutter/material.dart';
import 'package:my_first_app/api_services.dart';

class ScreenWithoutModel extends StatefulWidget {
  const ScreenWithoutModel({super.key});

  @override
  State<ScreenWithoutModel> createState() => _ScreenWithoutModelState();
}

class _ScreenWithoutModelState extends State<ScreenWithoutModel> {


dynamic SinglePost;
bool isReady = false;
_getSinglePostWithoutModel(){
   isReady = true;
  ApiServices().getSinglePostWithModel().then((value){
    setState(() {
      SinglePost = value;
      isReady = true;
    });
  }).onError((error, stackTrace) {
    print(error);
    isReady = true;
  },);
}

@override
  void initState() {
    _getSinglePostWithoutModel();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(' Post Without Model'),
      ),
      body: isReady == true?
      Center(child: CircularProgressIndicator(),):



      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(SinglePost['userId'].toString(), style: TextStyle(color: Colors.blue,fontSize: 20),),
          Text(SinglePost['title'].toString() , style: TextStyle(color: Colors.red,fontSize: 17),),
          Text(SinglePost['body'].toString() , style: TextStyle(color: Colors.purple,fontSize: 15),),
        ],
      )
    );
  }
}