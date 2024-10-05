import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_app/api_services.dart';
import 'package:my_first_app/single_post_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


bool isReady = false;
SinglePostWithModel singlePostWithModel = SinglePostWithModel();
_getSinglePost(){
  isReady = true;
  ApiServices().getSinglePostWithModel().then((value){
    setState(() {
      singlePostWithModel =  value!;
      isReady = false;
    });
  }).onError((error, stackTrace) {
    print(error);
    setState(() {
      isReady = false;
    });
  },);
}


@override
  void initState() {
    _getSinglePost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Single Post'),
      ),
      body: isReady == true?

            const Center (child: CircularProgressIndicator(),):

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(singlePostWithModel.userId.toString(),style:  TextStyle(fontSize: 20, color: Colors.blue),),
                Text(singlePostWithModel.title.toString(),style:  TextStyle(fontSize: 18, color: Colors.red),),
                Text(singlePostWithModel.body.toString(),style:  TextStyle(fontSize: 15, color: Colors.black),)
              
              
              ],
            )
    );
  }
}