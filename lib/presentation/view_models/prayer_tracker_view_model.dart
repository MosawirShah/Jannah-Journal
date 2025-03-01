import 'package:flutter/material.dart';

class PrayerTrackerViewModel with ChangeNotifier{


  final Map<int, bool> _buttonStates = {}; // Stores button states

  bool isChecked(int id) => _buttonStates[id] ?? false;

  void toggle(int id) {
    _buttonStates[id] = !(_buttonStates[id] ?? false);
    notifyListeners(); // Notify widgets to rebuild
  }

  //Prayer count
  int _prayerCount = 5;
  int get prayerCount => _prayerCount;
  void setPrayerCount(int id){
    if(_buttonStates[id] == true){
      _prayerCount --;
    }else{
      _prayerCount++;
    }

    notifyListeners();
  }
  //Digits to words
 getDigit(){
    switch(prayerCount){
      case 0:
        return "No";
      case 1:
        return "One";
      case 2:
        return "Two";
      case 3:
        return "Three";
      case 4:
        return "Four";
      case 5:
        return "Five";
    }
 }
}