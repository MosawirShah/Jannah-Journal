import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_images_url.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  List screen=[

  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth  = ScreenUtils.screenWidth(context);
    return Padding(
      padding: EdgeInsets.only(
          top: screenHeight * 0.01,
          left: screenWidth * 0.02,
          right: screenWidth * 0.02
          ,bottom: screenHeight * 0.02
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: screenHeight * 0.09,
          decoration: BoxDecoration(
            color: Colors.black, // Ensure background color applies
            borderRadius: BorderRadius.circular(34),
            boxShadow: [
              BoxShadow(
                color: Colors.black26, // Shadow effect
                blurRadius: 10,
                //spreadRadius: 2,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                34
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              // currentIndex: _selectedIndex,
              // onTap: _onItemTapped,
              items: [
                _returnBottomNavBarItem(context, AppImagesURL.prayerImage,"Prayer", RoutesName.prayerTrackerView),
                _returnBottomNavBarItem(context, AppImagesURL.overviewImage,"Overview", RoutesName.overviewView),
                _returnBottomNavBarItem(context, AppImagesURL.duaImage,"Dua", RoutesName.duaView),
                _returnBottomNavBarItem(context, AppImagesURL.charityImage,"Charity", RoutesName.charityView),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///Navigation Widget
_returnBottomNavBarItem(BuildContext context,String imagePath, String label, String routeName){
  return BottomNavigationBarItem(
      icon: InkWell(
        onTap: (){
          String homeViewName = RoutesName.homeView;

            Navigator.of(context).pushNamedAndRemoveUntil(routeName.toString(),(route)=>false);

        },
        child: Image(
            image: AssetImage(imagePath.toString())),
      ),
      label: label.toString());
}