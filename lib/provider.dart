import 'package:flutter/cupertino.dart';

class CountProvider extends ChangeNotifier{
  int count=0;
  void inCount(){
    count++;
    notifyListeners();
  }
  void minusCount(){
    count--;
    notifyListeners();
  }
}