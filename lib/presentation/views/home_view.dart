import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_images_url.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/components/common/custom_app_bar.dart';
import 'package:jannah_journal/presentation/components/common/custom_common_button.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/scaffold_background_painter.dart';

import '../components/common/bottom_nav_widget.dart';
import '../components/widgets/home_widgets/home_card.dart';

class HomeView extends StatefulWidget {
   HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {

    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return Scaffold(
      backgroundColor: AppColors.kGrey7D7C88Color,
      resizeToAvoidBottomInset: false, // Prevents body from shifting
      appBar: CustomAppBar(
        appBarTitle: AppStrings.homeAppBarText,
        leadingIconWidget: _leadingIconWidget(screenWidth: screenWidth),
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        actionAppBar: [
          Padding(
            padding:  EdgeInsets.only(right: screenWidth * 0.05),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.settingsView);
              },
                child: SvgPicture.asset(AppImagesURL.settingIcon,height: screenHeight * 0.03,)),
          ),
        ],
      ),
      body: Stack(
        children: [
          //top
          ScaffoldBackGroundPainter.topBlurredShape(),
          //bottom,
          ScaffoldBackGroundPainter.bottomBlurredShape(),

          //Home View body Content
          SizedBox(
            height: screenHeight * 0.83,
            width: screenWidth ,
            //   color: Colors.greenAccent,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.0,
                    horizontal: screenWidth * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.00,
                          horizontal: screenWidth * 0.0),
                      child: Text("February 24, 2025",
                          style: AppFontStyle.appTitleFontStyle),
                    ),

                    //spacer
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),

                    //Dear Diary Button
                    CustomCommonButton(
                      onTap: (){
                        Navigator.of(context).pushNamed(RoutesName.dearDiaryView);
                      },
                        buttonTitle: AppStrings.homeCustomButtonText,
                        buttonHeight: screenHeight * 0.06,
                        buttonWidth: screenWidth),

                    //spacer
                    SizedBox(
                      height: screenHeight * 0.035,
                    ),

                    //First Card Widget
                    HomeCard(
                      title: "Just booked that vacation!",
                      subtitle: "10:30 PM",
                      leadingImagePath: 'assets/images/emoji.png',
                      descriptionText:
                          "I finally  booked my vacation, and I can already feel the excitement of all the new adventures I will be having.",
                    ),
                    //Spacer
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    //2nd Card
                    HomeCard(
                      title: "Movie night",
                      subtitle: "07:00 PM",
                      leadingImagePath: 'assets/images/movie_image.png',
                      descriptionText:
                          "I had an amazing movie night with my sisters, we actually don’t do this enough...",
                    ),
                    //Spacer
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    //3rd Card
                    HomeCard(
                      title: "Breakfast",
                      subtitle: "08:00 AM",
                      leadingImagePath: 'assets/images/breakfast.png',
                      descriptionText:
                          "I had an amazing movie night with my sisters, we actually don’t do this enough...",
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///BOTTOM NAVIGATION BAR
          BottomNavWidget(),
        ],
      ),


    );
  }



  //AppBar LeadingICon
  Widget _leadingIconWidget({required double screenWidth}) {
    return Row(
      children: [
        Expanded(child: Image.asset("assets/images/arrow_back.png")),
        SizedBox(
          width: screenWidth * 0.03,
        ),
        Expanded(child: Image.asset('assets/images/arrow_forward.png'))
      ],
    );
  }
}
