import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{

  int _count =0;
  int get  count => _count;
void increment(){
  _count ++;
  notifyListeners();//Notify listeners that the value has changed.
}
void decrement(){
  _count --;
  notifyListeners();//Notify listeners that the value has changed.

}

}