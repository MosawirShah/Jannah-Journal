import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/components/widgets/home_widgets/home_custom_button.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';
import 'package:jannah_journal/presentation/styles/decorations/scaffold_background_painter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtils.screenHeight(context);
    double screenWidth = ScreenUtils.screenWidth(context);
    return Scaffold(
      backgroundColor: AppColors.kGrey7D7C88Color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Today", style: AppFontStyle.fontStyleInterSmallSize),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Expanded(child: Image.asset("assets/images/arrow_back.png")),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              Expanded(child: Image.asset('assets/images/arrow_forward.png'))
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SvgPicture.asset('assets/icons/menu_icon.svg'),
          ),
        ],
      ),
      body: Stack(
        children: [
          //top
          ScaffoldBackGroundPainter.topBlurredShape(),
          //botto,
          ScaffoldBackGroundPainter.bottomBlurredShape(),

          //Home View body Content
          SingleChildScrollView(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              //   color: Colors.greenAccent,
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
                          style: AppFontStyle.fontStyleInterSmallSize
                              .copyWith(fontSize: 32)),
                    ),

                    //spacer
                    SizedBox(height: screenHeight * 0.03,),

                    //Dear Diary Button
                    HomeCustomButton(),

                    //spacer
                   SizedBox( height: screenHeight * 0.035,),

                    //First Card Widget
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.009,horizontal: screenWidth * 0.00),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text("Just booked that vacation!",
                                  style: AppFontStyle.fontStyleInterSmallSize
                                      .copyWith(fontSize: 20)),
                              leading: Container(
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                height: screenHeight * 0.05,
                                  width: screenWidth * 0.09,
                                  child: Image.asset('assets/images/emoji.png',fit: BoxFit.cover,)),
                              subtitle: Text("10:30"),
                            ),

                            //Spacer
                            SizedBox(height: screenHeight * 0.00,),
                            Padding(
                              padding: EdgeInsets.only(bottom: screenHeight * 0.0,left: screenWidth * 0.02,),
                              child: Text(
                                "Attachment",
                                style: AppFontStyle.fontStyleInterSmallSize
                                    .copyWith(fontSize: 13),
                              ),
                            ),

                            //see image widget
                            Padding(
                              padding: EdgeInsets.only(bottom: screenHeight * 0.0,left: screenWidth * 0.02,),
                              child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "See image",
                                    style: AppFontStyle.fontStyleInterSmallSize
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: AppColors.kGrey909090Color),
                                  )),
                            ),

                            //Description widget
                            Padding(
                              padding: EdgeInsets.only(top: screenHeight * 0.017,left: screenWidth * 0.02,),
                              child: Text(
                                "Description",
                                style: AppFontStyle.fontStyleInterSmallSize
                                    .copyWith(fontSize: 13),
                              ),
                            ),

                            //Description text
                            Padding(
                              padding: EdgeInsets.only(top: screenHeight * 0.004,bottom: screenHeight * 0.01,left: screenWidth * 0.02,),
                              child: Text(
                                "I finally  booked my vacation, and I can already feel the excitement of all the new adventures I will be having.",
                                style: AppFontStyle.fontStyleInterSmallSize.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.kGrey909090Color),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
