import 'package:flutter/cupertino.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';

class BottomNavigationViewModel with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  onItemTapped(int index, BuildContext context) {
    if (index == _selectedIndex) return;
    _selectedIndex = index;
    notifyListeners();
  }

}
