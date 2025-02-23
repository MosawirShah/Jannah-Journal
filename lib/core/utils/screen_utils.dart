import 'package:flutter/cupertino.dart';

class ScreenUtils{
  //Responsive Height of the screen
  static screenHeight(BuildContext context)=> MediaQuery.of(context).size.height;

  //Responsive width of the screen
 static screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
}