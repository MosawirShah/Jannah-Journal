import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/components/common/custom_app_bar.dart';
import 'package:jannah_journal/presentation/components/common/custom_common_button.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/scaffold_background_painter.dart';

import '../../core/constants/app_images_url.dart';
import '../components/common/bottom_nav_widget.dart';
import '../components/widgets/home_widgets/home_card.dart';

class CharityView extends StatelessWidget {
  CharityView({super.key});

  //List of Strings (For Testing)
  List<String> textList = [
    "1. I gave my shoes to a homeless woman",
    "2. I helped an elderly neighbour carry her groceries home",
    "3. I forgave someone who wronged me, even though I was hurt",
    "4. I left fresh water and food for my stray neighbourhood cats",
    "5. I paid for a families groceries because I could",
    "6. I taught my niece to recite Surah Al-Fatiha",
    "7. I taught my niece to recite Surah Al-Fatiha"
  ];

  //List of Dates
  List<String> dateList = [
    "02/20/2022",
    "02/24/2022",
    "03/05/2022",
    "03/15/2022",
    "03/20/2022",
    "03/25/2022",
    "04/10/2022",
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return Scaffold(
      backgroundColor: AppColors.kGrey7D7C88Color,
      resizeToAvoidBottomInset: false, // Prevents body from shifting
      appBar: CustomAppBar(
        appBarTitle: AppStrings.charityAppBarText,
        leadingIconWidget: Image.asset("assets/images/arrow_back.png"),
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        actionAppBar: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(child: SvgPicture.asset(AppImagesURL.settingIcon, height: screenHeight * 0.03,)),
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
            width: screenWidth,
            //   color: Colors.greenAccent,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.0,
                    horizontal: screenWidth * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.00,
                          horizontal: screenWidth * 0.0),
                      child: Text("Acts of Kindness",
                        style: AppFontStyle.appTitleFontStyle,

                      ),
                    ),

                    //spacer
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),

                    //Dear Diary Button
                    CustomCommonButton(
                      onTap: (){
                        Navigator.of(context).pushNamed(RoutesName.addHasanatView);
                      },
                        buttonTitle: "Add Hasanat",
                        buttonHeight: screenHeight * 0.06,
                        buttonWidth: screenWidth),

                    //spacer
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    //
                    Row(
                      children: [
                        Text("Sort date: ",),
                        Text("Old -> New",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    //First Card Widget
                   Card(
                     child:Column(
                       children: [
                         ReusableCharityColumn(textList: textList,dateList: dateList,index: 0,screenHeight: screenHeight,screenWidth:screenWidth     ),
                         ReusableCharityColumn(textList: textList,dateList: dateList,index: 1,screenHeight: screenHeight,screenWidth:screenWidth     ),
                         ReusableCharityColumn(textList: textList,dateList: dateList,index: 2,screenHeight: screenHeight,screenWidth:screenWidth     ),
                         ReusableCharityColumn(textList: textList,dateList: dateList,index: 3,screenHeight: screenHeight,screenWidth:screenWidth     ),
                         ReusableCharityColumn(textList: textList,dateList: dateList,index: 4,screenHeight: screenHeight,screenWidth:screenWidth     ),
                         ReusableCharityColumn(textList: textList,dateList: dateList,index: 5,screenHeight: screenHeight,screenWidth:screenWidth     ),
                         ReusableCharityColumn(textList: textList,dateList: dateList,index: 6,screenHeight: screenHeight,screenWidth:screenWidth     ),

                       ],
                     ),
                   ),
                    //Spacer

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
}

///
class ReusableCharityColumn extends StatelessWidget {
  ReusableCharityColumn({required this.textList,required this.dateList,required this.index  ,required this.screenHeight, required this.screenWidth,super.key});

  double screenWidth;
  double screenHeight;
  List<String> textList;
  List<String> dateList;
  int index;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
          },
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.03,right:  screenWidth * 0.03),
            child: Text(textList[index],style: AppFontStyle.duaFontStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.05),
          child: Text(dateList[index]),
        ),
        SizedBox(height: screenHeight * 0.01,),
      ],
    );
  }
}
