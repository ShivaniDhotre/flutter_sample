import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int _count = 0;


  int getCount() => _count;


  void _incrementCounter(){

    _count++;
    notifyListeners();
  }
  void decrementCount(){
    if(_count>0){
      _count--;
      notifyListeners();
    }
  }
}