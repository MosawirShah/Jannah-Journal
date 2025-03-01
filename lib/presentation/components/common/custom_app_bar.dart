import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
   CustomAppBar({required this.appBarTitle,required this.leadingIconWidget,required this.screenHeight, required this.screenWidth,required this.actionAppBar,super.key});
   double screenHeight;
   double screenWidth;
   Widget leadingIconWidget;
   List<Widget> actionAppBar;
   String appBarTitle;
  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(appBarTitle.toString(), style: appBarTitle == "Settings"?AppFontStyle.appTitleFontStyle :AppFontStyle.fontStyleInterSmallSize),
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.01),
        child: leadingIconWidget
      ),
      actions: actionAppBar,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(screenHeight * 0.05);
}
