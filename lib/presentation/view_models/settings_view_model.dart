import 'package:flutter/widgets.dart';

class SettingsViewModel with ChangeNotifier{

  bool _notificationValue = true;
  bool get notificationValue =>_notificationValue;
  void setNotificationValue(bool value){
    _notificationValue = value;
    notifyListeners();
  }
}